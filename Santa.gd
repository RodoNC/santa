extends KinematicBody2D

const laserPath = preload("res://laser.tscn")

onready var  player = $AnimationPlayer

export (int) var lspeed = 2000
export (int) var nlspeed = 1999
export (int) var speed = 80
export (int) var jump_speed = -400
export (int) var gravity = 2000

export (float, 0, 1.0) var friction = 0.1
export (float, 0, 1.0) var acceleration = 0.25


var ptime = 0
var velocity = Vector2.ZERO
var inv_gamma = 1


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.




# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#calculate gamma
	inv_gamma = sqrt(1 - (velocity.length_squared() / (lspeed * lspeed)))
	
	
	#animation
	if velocity.length() < 200:
		if velocity.x < 100:
			player.play("idle")
		else:
			player.play("slow")
	else:
		if is_on_floor():
			player.play("run")
		else:
			player.play("jump")
		if velocity.x >= 50:
			$Sprite.flip_h = true
		elif velocity.x <= -50:
			$Sprite.flip_h = false
	
	#length contraction
	$Sprite.scale.x = inv_gamma
	
	#time dilation
	ptime += delta * inv_gamma


func _physics_process(delta):
	#get input
	var dir = 0
	if Input.is_action_pressed("walk_right"):
		dir += 1
	if Input.is_action_pressed("walk_left"):
		dir -= 1
	if dir != 0:
		if Input.is_action_pressed("boost"):
			velocity.x = lerp(velocity.x, dir * nlspeed, acceleration)
		else:
			velocity.x = lerp(velocity.x, dir * speed, acceleration)
	elif abs(velocity.x) < 5:
		velocity.x = 0.0
	else:
		velocity.x = lerp(velocity.x, 0, friction)
	
	#gravity
	velocity.y += gravity * delta
	
	#set velocity to almost 0 when at rest
	if is_on_floor():
		velocity.y = .1
		if Input.is_action_just_pressed("jump"):
			velocity.y = jump_speed
	
	#limit velocity to speed of light
	velocity = velocity.limit_length(nlspeed)
	
	velocity = move_and_slide(velocity, Vector2.UP)
	
	#shooty
	if Input.is_action_just_pressed("shoot"):
		shoot()


func shoot():
	var laser = laserPath.instance()
	
	get_parent().add_child(laser)
	laser.position = $Node2D/LaserPoint.global_position
	laser.velocity = get_global_mouse_position() - laser.position
	laser.rotation = (get_global_mouse_position() - laser.position).angle()

extends KinematicBody2D


onready var  player = $AnimationPlayer

export (int) var speed = 900
export (int) var jump_speed = -800
export (int) var gravity = 4000

export (float, 0, 1.0) var friction = 0.1
export (float, 0, 1.0) var acceleration = 0.25


var velocity = Vector2.ZERO


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.




# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#animation
	print(velocity.x)
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




func _physics_process(delta):
	var dir = 0
	if Input.is_action_pressed("walk_right"):
		dir += 1
	if Input.is_action_pressed("walk_left"):
		dir -= 1
	if dir != 0:
		velocity.x = lerp(velocity.x, dir * speed, acceleration)
	elif abs(velocity.x) < 5:
		velocity.x = 0.0
	else:
		velocity.x = lerp(velocity.x, 0, friction)
	
	velocity.y += gravity * delta
	velocity = move_and_slide(velocity, Vector2.UP)
	
	if Input.is_action_just_pressed("jump"):
		if is_on_floor():
			velocity.y = jump_speed


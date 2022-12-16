extends KinematicBody2D

onready var player = get_node("/root/TestScene/Santa")

export (int) var lspeed = 2000
export (int) var speed = 700
export (int) var gravity = 2000
export (float, 0, 1.0) var friction = 0.1
export (float, 0, 1.0) var acceleration = 0.25

var velocity = Vector2.ZERO
var inv_gamma = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#calculate gamma
	inv_gamma = sqrt(1 - (velocity.length_squared() / (lspeed * lspeed)))
	
	#length contraction
	$Sprite.scale.x = inv_gamma


func _physics_process(delta):
	var dir = 0
	if player.position.x > position.x:
		dir += 1
	else:
		dir -= 1
	
	if dir != 0:
		velocity.x = lerp(velocity.x, dir * speed, acceleration)
	
	#gravity
	velocity.y += gravity * delta
	
	#set velocity to almost 0 when at rest
	if is_on_floor():
		velocity.y = .1
	
	velocity = move_and_slide(velocity, Vector2.UP)


func die():
	queue_free()

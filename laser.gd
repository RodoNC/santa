extends KinematicBody2D

var velocity = Vector2(0,1)
export (int) var speed = 2000


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _physics_process(delta):
	var collision_info = move_and_collide(velocity.normalized() * delta * speed)
	
	#delete on collision
	if collision_info:
		if collision_info.collider.has_method("die"):
			collision_info.collider.die()
		queue_free()

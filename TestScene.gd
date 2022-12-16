extends Node2D

export (int) var num_enemies = 5
const snowpath = preload("res://snowboy.tscn")
var rng = RandomNumberGenerator.new()

onready var timer = $Camera2D/Timer
onready var ptimer = $Camera2D/PTimer
onready var player = $Santa
onready var stimer = $Stimer


var time = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	time += delta
	timer.text = str(int(time))
	ptimer.text = str(int(player.ptime))

#spawn snowboys
func _on_Stimer_timeout():
	print("spawn")
	var snowboy = snowpath.instance()
	get_parent().add_child(snowboy)
	
	if rng.randf() > .5:
		snowboy.position = $SnowSpawn.global_position
	else:
		snowboy.position = $SnowSpawn2.global_position
	num_enemies -= 1
	if num_enemies == 0:
		stimer.stop()

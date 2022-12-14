extends Node2D

onready var timer = $Camera2D/Timer
onready var ptimer = $Camera2D/PTimer
onready var player = $Santa
var time = 0
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	time += delta
	timer.text = str(int(time))
	ptimer.text = str(int(player.ptime))

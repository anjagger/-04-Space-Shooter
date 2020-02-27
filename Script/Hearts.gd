extends Node2D

export var probability = .2
onready var Heart = load("res://Scene/Heart.tscn")

func _ready():
	randomize()


func _on_Timer_timeout():
	if randf() < probability:
		var H = Heart.instance()
		add_child(H)

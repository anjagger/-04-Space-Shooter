extends Node2D

export var probability = .4
onready var Meteor = load("res://Scene/Meteor.tscn")

func _ready():
	randomize()


func _on_Timer_timeout():
	if randf() < probability:
		var m = Meteor.instance()
		add_child(m)

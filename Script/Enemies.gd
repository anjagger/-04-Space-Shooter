extends Node2D

export var max_enemies = 6
export var probability = .3

onready var Enemy = load("res://Scene/Enemy.tscn")
onready var Enemy2 = load("res://Scene/Enemy2.tscn")

func _ready():
	randomize()
	
func _on_Timer_timeout():
	if get_child_count() < max_enemies + 1:
		if randf() < probability or get_child_count() == 1:
			if randf() < .5:
				var e = Enemy.instance()
				add_child(e)
			else:
				var e = Enemy2.instance()
				add_child(e)

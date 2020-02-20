extends Node2D

func _ready():
	pass 


func _on_Player_health_changed():
	var h = get_node("/root/Game/Player").health
	$health.text = "Health: " + str(h)


func _on_Player_score_changed():
	var s = get_node("/root/Game/Player").score
	$score.text = "Score: " + str(s)

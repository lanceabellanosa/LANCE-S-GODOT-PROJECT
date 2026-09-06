extends Node2D

var button_type = null

func _on_play_pressed() -> void:
	button_type = "play"
	$ColorRect.show()
	$"ColorRect/fade_timer".start()
	$ColorRect/AnimationPlayer.play("fade_in")
	

func _on_fade_timer_timeout() -> void:
	if button_type == "play":
		get_tree().change_scene_to_file("res://scenes/floor_5.tscn")

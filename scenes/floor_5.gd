extends Node3D

func _ready():
	$transition/AnimationPlayer.play("fade_out")

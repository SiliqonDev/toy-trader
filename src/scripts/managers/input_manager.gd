class_name InputManager
extends Node

func initialize():
	pass

func _process(_delta : float) -> void:
	if Input.is_action_just_pressed("pause_game"):
		SignalBus.toggle_pause.emit()

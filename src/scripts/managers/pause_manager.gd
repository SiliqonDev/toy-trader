class_name PauseManager
extends Node

var paused : bool = false

func initialize() -> void:
	SignalBus.pause_game.connect(pause_game)
	SignalBus.resume_game.connect(resume_game)
	SignalBus.toggle_pause.connect(toggle_pause)

func pause_game() -> void:
	if paused:
		return
		
	paused = true
	get_tree().paused = true

func resume_game() -> void:
	if !paused:
		return

	paused = false
	get_tree().paused = false

func toggle_pause() -> void:
	if paused:
		resume_game()
	else:
		pause_game()

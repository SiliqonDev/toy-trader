class_name Game
extends Node

@onready var player: Player = $Player
@onready var pauseManager : PauseManager = $Managers/PauseManager
@onready var inputManager : InputManager = $Managers/InputManager

func _ready() -> void:
    _initialize_managers()
    _start_game()

func _initialize_managers() -> void:
    pauseManager.initialize()
    
    inputManager.initialize()

func _load_game() -> void:
    # TODO: save loading
    pass

func _start_game() -> void:
    # TODO pre start procedures
    print("Starting game")
class_name Player
extends Node

var _money : int = 0

func _ready() -> void:
    SignalBus.player_money_changed.emit(_money)

func set_money(amount: int) -> void:
    _money = amount

func credit_money(amount : int) -> void:
    _money += amount

func debit_money(amount : int) -> void:
    _money -= amount

func get_money() -> int:
    return _money

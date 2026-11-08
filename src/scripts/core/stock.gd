class_name Stock
extends Node

var _id : String
var _displayName : String
var _tickerSymbol : String
var _properties : Dictionary

var _modifiers : Dictionary = {
    VOLATILITY = 0
}

func initialize(stockId : String, displayName : String, tickerSymbol : String, stockProperties : Dictionary) -> void:
    _id = stockId
    _displayName = displayName
    _tickerSymbol = tickerSymbol
    _properties = stockProperties

    SignalBus.stock_price_changed.emit(_id, _properties.CURRENT_PRICE)

func get_id() -> String:
    return _id

func get_display_name() -> String:
    return _displayName

func get_ticker_symbol() -> String:
    return _tickerSymbol

func get_price() -> float:
    return _properties.CURRENT_PRICE

func set_price(newPrice : float) -> void:
    _properties.CURRENT_PRICE = newPrice
    SignalBus.stock_price_changed.emit(_id, _properties.CURRENT_PRICE)

func get_base_volatility() -> float:
    return _properties.BASE_VOLATILITY

func get_volatility() -> float:
    var total_volatility : float = get_base_volatility() + _modifiers.VOLATILITY
    return total_volatility

func set_modifiers(modifiers : Dictionary) -> void:
    for modifier : String in modifiers.keys():
        _modifiers[modifier] = modifiers[modifier]
    
func get_modifier(key : String) -> Variant:
    return _modifiers.get(key, null)
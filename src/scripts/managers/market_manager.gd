class_name MarketManager
extends Node

var stocksById : Dictionary[String, Stock] = {}

func initialize() -> void:
	load_stocks()

	for stockId in stocksById.keys():
		print(stockId)

func load_stocks() -> void:
	var stockIds : Array[String] = StockProperties.get_stock_ids()
	for stockId : String in stockIds:
		var stockInstance = Stock.new()
		var displayName = StockProperties.get_display_name(stockId)
		var tickerSymbol = StockProperties.get_ticker_symbol(stockId)
		var stockProperties = StockProperties.get_base_properties(stockId)

		stockInstance.initialize(stockId, displayName, tickerSymbol, stockProperties)

		stocksById[stockId] = stockInstance

		# TODO: get current price from save manager, price histories, etc.

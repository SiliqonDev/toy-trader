extends Node

var stockIds : Array[String] = ["stock1", "stock2", "stock3",]

var displayNames : Dictionary[String, String] = {
	"stock1" = "Volatile Stock Example",
	"stock2" = "Normal Stock Example",
	"stock3" = "Stable Stock Example",
}

var tickerSymbols : Dictionary[String, String] = {
	"stock1" = "STK1",
	"stock2" = "STK2",
	"stock3" = "STK3",
}

var baseProperties : Dictionary[String, Dictionary] = {
	"stock1" = {
		CURRENT_PRICE = 200.0,
		FLOOR_PRICE = 10.0,
		CEILING_PRICE = 500.0,

		BASE_VOLATILITY = 0.5,
	},
	"stock2" = {
		CURRENT_PRICE = 100.0,
		FLOOR_PRICE = 25.0,
		CEILING_PRICE = 300.0,

		BASE_VOLATILITY = 0.25,
	},
	"stock3" = {
		CURRENT_PRICE = 100.0,
		FLOOR_PRICE = 50.0,
		CEILING_PRICE = 200.0,

		BASE_VOLATILITY = 0.1,
	}
}

func get_stock_ids() -> Array[String]:
	return stockIds

func get_display_name(stockId : String) -> String:
	return displayNames.get(stockId, "NULL")

func get_ticker_symbol(stockId : String) -> String:
	return tickerSymbols.get(stockId, "NULL")

func get_base_properties(stockId : String) -> Dictionary:
	return baseProperties.get(stockId, {})

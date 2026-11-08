extends Node

signal pause_game()
signal resume_game()
signal toggle_pause()

signal player_money_changed(money : int)

signal stock_price_changed(stockId : String, price : int)

signal place_buy_order(stockId : String, amount : int, price : int)
signal place_sell_order(stockId : String, amount : int, price : int)


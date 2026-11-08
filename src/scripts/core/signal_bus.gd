extends Node

signal pause_game()
signal resume_game()
signal toggle_pause()

signal player_money_changed(money : int)

signal stock_price_changed(price : int)

signal place_buy_order(stockId : int, amount : int, price : int)
signal place_sell_order(stockId : int, amount : int, price : int)


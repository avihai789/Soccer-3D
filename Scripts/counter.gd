extends Label

var coins = 0

func _ready():
	text = String(coins)


func _on_coin_Collected():
	coins = coins + 1
	_ready()
	
	if coins == 8:
		$Timer.start()


func _on_Timer_timeout():
	
	if self.get_parent().get_parent().name == "Level":
		get_tree().change_scene("res://Level2.tscn")
	else:
		get_tree().change_scene("res://assets/YouWin.tscn")

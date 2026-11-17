extends ProgressBar
class_name Health_test


const MAX_HEALTH = 100
var damage: int = 0
var healing: int = 0

func _ready() -> void:
	max_value = MAX_HEALTH
	value = max_value

func getting_damage():
	value -= damage
	print("-15")

func getting_healed():
	value += healing

extends ProgressBar

class_name Healthbar_info

const MAX_HEALTH = 100
var damage: int = 0
var healing: int = 0

func _ready() -> void:
	max_value = MAX_HEALTH
	value = max_value

func getting_damage(damage: int) -> void:
	value -= damage
	print("Player got damage: ", damage)

func getting_healed(healing):
	value += healing

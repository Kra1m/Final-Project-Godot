extends Resource
class_name Health_state



var damage: int = 0
var healing: int = 0

func getting_damage():
	health_state -= damage

func getting_healed():
	health_state += healing

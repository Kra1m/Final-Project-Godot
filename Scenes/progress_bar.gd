extends ProgressBar

@export var player: FemPlayer

func _ready() -> void:
	update_health()

func update_health():
	value = player.health_state * 100 / player.MAX_HEALTH

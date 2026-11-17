extends Area2D

@onready var healthbar: ProgressBar = 

func _on_body_entered(body: Node2D) -> void:
	print("you died")
	healthbar.getting_damage()

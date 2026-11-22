extends Area2D
class_name Killzone

@export var damage: int = 4


func _on_body_entered(body: Node2D) -> void:	
	if body is FemPlayer:
		var health_bar = body.get_node_or_null("CanvasLayer/HealthBar/Panel/ProgressBar")
		if health_bar:
			health_bar.getting_damage(damage)
		else:
			print("Healthbar is not found")

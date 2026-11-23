extends Control
class_name Control_of_options 

var battle_started: bool = true
@onready var player: FemPlayer = $"../../FemPlayer"
@onready var npc: NpcEnemy = $"../../npc_enemy"


func _ready() -> void:
	#visible = false
	pass


func _process(delta: float) -> void:
	if battle_started == true:
		pass
		

func _on_fight_button_pressed() -> void:
	print("fight button")
	player.can_move = true
	visible = false


func _on_talk_button_pressed() -> void:
	print("talk button")
	visible = false
	npc.start_dialogue = true
	npc.dialogue_active()
	


func _on_runaway_button_pressed() -> void:
	print("run away button")

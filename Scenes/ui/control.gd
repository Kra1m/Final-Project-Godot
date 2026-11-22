extends Control

var battle_started: bool = true
@onready var player: FemPlayer = $"../../FemPlayer"
@onready var npc: NpcEnemy = $"../../npc_enemy"

@onready var controls_seen = $"."
#@onready var controls_seen = get_node(".")

func _ready() -> void:
	controls_seen.visible = false


func _process(delta: float) -> void:
	if battle_started == true:
		controls_seen.visible = true
		

func _on_fight_button_pressed() -> void:
	print("fight button")
	player.can_move = true
	controls_seen.visible = false


func _on_talk_button_pressed() -> void:
	print("talk button")
	npc.start_dialogue = true
	npc.dialogue_active()
	controls_seen.visible = false


func _on_runaway_button_pressed() -> void:
	print("run away button")

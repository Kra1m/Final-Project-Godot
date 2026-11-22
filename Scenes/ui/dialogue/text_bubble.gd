extends Control

class_name Text_bubble

@onready var can_see_textbubble = get_node(".")
var d_active = false

@export_file("*.json") var d_file

var dialogue = []
var current_dialogue_id = 0

func _ready() -> void:
	can_see_textbubble.visible = false

func start():
	if d_active:
		return
	d_active = true
	can_see_textbubble.visible = true
	dialogue = load_dialogue()
	current_dialogue_id = -1
	next_script()

func load_dialogue():
	var file = FileAccess.open("res://npc_enemy/npc_enemy dialogue.json", FileAccess.READ)
	var content = JSON.parse_string(file.get_as_text())
	return content

func _input(event):
	if !d_active:
		return
	if event.is_action_pressed("interact"):
		next_script()

func next_script():
	current_dialogue_id += 1
	if current_dialogue_id >= len(dialogue):
		d_active = false
		can_see_textbubble.visible = false
		return
	
	$Panel/MarginContainer/VBoxContainer/Name.text = dialogue[current_dialogue_id]['name']
	$Panel/MarginContainer/VBoxContainer/Text.text = dialogue[current_dialogue_id]['text']
	

extends CharacterBody2D
class_name NpcEnemy

@onready var killing_zone: Killzone = $Killzone
@onready var text_bubble: Text_bubble = $CanvasLayer/TextBubble

func _ready() -> void:
	killing_zone.damage = 10

var start_dialogue = false

func dialogue_active():
	if start_dialogue == true:
		text_bubble.start()

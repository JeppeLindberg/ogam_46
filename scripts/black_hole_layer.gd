extends Node2D

@onready var pivot = get_node('pivot')
@onready var main = get_node('/root/main')

var start_color = Color(1.0, 1.0, 1.0, 1.0)

var index = 0

func _ready() -> void:
	start_color = modulate
	pivot.rotation_degrees = (-main.seconds() * 5.0) + index * 15.0
	modulate = start_color * Color(1.0, 1.0, 1.0, index / 100.0)

func _process(_delta: float) -> void:
	pivot.rotation_degrees = (-main.seconds() * 5.0) + index * 15.0

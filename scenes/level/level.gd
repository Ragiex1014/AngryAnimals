extends Node2D

@onready var animal_start: Marker2D = $AnimalStart
const MAIN = preload("res://scenes/main/main.tscn")

const BIRD = preload("res://scenes/bird/bird.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add_animal()
	SignalManager.on_bird_died.connect(add_animal)


func add_animal() -> void:
	var bird = BIRD.instantiate()
	bird.position = animal_start.position
	add_child(bird)

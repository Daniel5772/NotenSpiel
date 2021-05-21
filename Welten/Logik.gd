extends Node2D

func _ready():
	add_to_group("Logik")

var Note = preload("res://Noten/Note1.tscn")

var counter = 1

func add_drop():
	counter += 1
	print(counter)
	

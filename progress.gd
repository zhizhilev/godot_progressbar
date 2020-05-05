extends Node2D

var count_sprite
var sprites
var red = preload("res://heart.png")
var half = preload("res://half_heart.png")
var blue = preload("res://blue_heart.png")

# Called when the node enters the scene tree for the first time.
func _ready():
	count_sprite = self.get_child_count()
	sprites = self.get_children()

func set_value(value):
	if value < 0 or value > count_sprite * 2:
		print("Не попали в диапазон")
	var red_count = int(value / 2)
	var full = true
	if value % 2 != 0:
		full = false
	var i = 0
	for sprite in sprites:
		if i < red_count:
			sprite.texture = red
		else:
			if !full and i == red_count:
				sprite.texture = half
			else:
				sprite.texture = blue
		i += 1
		
	

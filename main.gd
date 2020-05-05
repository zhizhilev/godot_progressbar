extends Node2D

var health = 0
const MAX = 10

func _on_Timer_timeout():
	health += 1
	if health > MAX:
		health = 0
	$progress.set_value(health)
	$TextureProgress.value = health
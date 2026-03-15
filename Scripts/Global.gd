extends Node

var gems_collected = 0

func _on_roingus_unit_gems_get() -> void:
	gems_collected += 50
	print(gems_collected)
	pass # Replace with function body.

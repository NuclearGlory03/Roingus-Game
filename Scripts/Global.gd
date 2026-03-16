extends Node

var gems_collected = 0
var health = 100
signal gems

func _on_roingus_unit_gems_get() -> void:
	gems_collected += 50
	emit_signal('gems', gems_collected)

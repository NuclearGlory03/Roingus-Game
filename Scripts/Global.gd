extends Node

var gems_collected = 0
signal gems

func _on_roingus_unit_gems_get() -> void:
	gems_collected += 50
	print(gems_collected)

func _process(_delta: float) -> void:
	emit_signal('gems', gems_collected)

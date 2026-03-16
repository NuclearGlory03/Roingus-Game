extends Sprite2D
var skewDirection = 1

func _process(delta: float) -> void:
	if skewDirection == 1:
		skew += 1 * delta
	elif skewDirection == -1:
		skew -= 1 * delta
	
	if skew >= 0.1:
		skewDirection = -1
	elif skew <= -0.1:
		skewDirection = 1

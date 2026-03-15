extends Camera2D

const SPEED = 100.0
const MouseSpeed = 5
const zoomFactor = 0.01
var isPressed = false
var lastMouseX
var lastMouseY

func _process(delta: float) -> void:

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	
	var direction := Input.get_vector("left", "right", "up", "down")
	position = position + direction * SPEED
	if Input.is_action_pressed("shift") :
		position = position + direction * SPEED * 2


func _input(event):
	
	if event is InputEventMouseButton:
		
		if event.button_index == 3 && event.pressed:
			isPressed = true
			lastMouseX = event.position.x
			lastMouseY = event.position.y
			
		elif event.button_index == 3 && !event.pressed :
			isPressed = false
			
		
		if event.button_index == 4:
			zoom.x += zoomFactor
			zoom.y += zoomFactor
		elif event.button_index == 5:
			zoom.x -= zoomFactor
			zoom.y -= zoomFactor
		
	
	if event is InputEventMouseMotion :
		event.relative
	
	if event is InputEventMouseMotion && isPressed:
		position.x += (lastMouseX - event.position.x) * MouseSpeed
		position.y += (lastMouseY - event.position.y) * MouseSpeed
		lastMouseX = event.position.x
		lastMouseY = event.position.y
	

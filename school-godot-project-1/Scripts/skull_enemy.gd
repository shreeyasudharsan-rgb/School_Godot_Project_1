extends Node2D

const SPEED = 60

var direction = 1

var start_x

func _ready():
	start_x = global_position.x
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	
	global_position.x += direction * SPEED * delta
	
	if global_position.x > start_x + 35:
		direction = -1
		
	if global_position.x < start_x - 35:
		direction = 1

	

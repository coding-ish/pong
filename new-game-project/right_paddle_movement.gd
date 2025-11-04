extends CharacterBody2D


const SPEED = 300.0

func get_input():
	var input_direction = Input.get_vector("ui_left","ui_right","up_right_paddle","down_right_paddle")
	velocity = input_direction * SPEED
	
func _physics_process(delta):
	_process(delta)
	get_input()

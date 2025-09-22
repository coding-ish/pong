extends CharacterBody2D


const SPEED = 300.0

func _process(delta):
	var velocity = Vector2.ZERO
	if Input.is_action_just_pressed("down_left_paddle"):
		velocity.y += 1
	if Input.is_action_just_pressed("up_left_paddle"):
		velocity.y -= 1

func get_input():
	var input_direction = Input.get_vector("ui_left","ui_right","up_left_paddle","down_left_paddle")
	velocity = input_direction * SPEED
	
func _physics_process(delta):
	get_input()

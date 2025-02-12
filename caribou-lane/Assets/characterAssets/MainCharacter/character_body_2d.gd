extends CharacterBody2D

@export var move_speed = 100

func get_input():
	velocity = Vector2.ZERO

	if Input.is_action_pressed("left"):
		velocity.x -= 1
	elif Input.is_action_pressed("right"):
		velocity.x += 1
	elif Input.is_action_pressed("up"):
		velocity.y -= 1
	elif Input.is_action_pressed("down"):
		velocity.y += 1
	else:
		velocity = Vector2.ZERO
		
	velocity = velocity.normalized() * move_speed

func _physics_process(_delta):
	
	get_input()
	move_and_slide()
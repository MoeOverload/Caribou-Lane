extends CharacterBody2D
@onready var _animated_sprite = $AnimatedSprite2D
@export var move_speed = 60

func get_input():
	velocity = Vector2.ZERO
	

	if Input.is_action_pressed("left"):
		_animated_sprite.play("walk_left")
		velocity.x -= 1
	elif Input.is_action_pressed("right"):
		_animated_sprite.play("walk_right")
		velocity.x += 1
	elif Input.is_action_pressed("up"):
		_animated_sprite.play("walk_up")
		velocity.y -= 1
	elif Input.is_action_pressed("down"):
		_animated_sprite.play("walk_down")
		velocity.y += 1
	else:
		_animated_sprite.play("idle")
		velocity = Vector2.ZERO
		
	velocity = velocity.normalized() * move_speed

func _physics_process(_delta):
	
	get_input()
	move_and_slide()

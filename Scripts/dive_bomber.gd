extends CharacterBody2D

@export var speed:int = 20000

const SPEED = 300.0
const JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:
	velocity.y = delta * speed
		
	if Input.is_action_pressed("bomb drop"):
		print("drop")
		#play drop anim

	move_and_slide()

extends AnimatedSprite2D

@export var speed:int = 100

func _process(delta: float) -> void:
	velocity.y = -1 * speed * delta
	if Input.is_action_pressed("bomb drop"):
		print("drop")
		#play drop anim

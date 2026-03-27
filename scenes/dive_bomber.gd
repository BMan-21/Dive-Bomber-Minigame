extends AnimatedSprite2D

@export var bomb_speed: int = 50

func _process(delta: float) -> void:
	if Input.is_action_pressed("bomb drop"):
		print("drop")
		$AnimationPlayer.play("drop bomb")
		#still figuring out how to drop
		$Sprite2D.transform.y = delta * bomb_speed

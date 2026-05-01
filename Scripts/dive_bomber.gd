extends CharacterBody2D

@export var speed:int = 20000
@onready var altitude_arrow: Label = $"altitude arrow"


func _physics_process(delta: float) -> void:
	velocity.y = delta * speed
	if global_position.y > -200:
		get_tree().change_scene_to_file("res://scenes/bomb die.tscn")
		#play die anim
	altitude_arrow.text = str(round(global_position.y * -100)/10)
	if Input.is_action_pressed("bomb drop"):
		print("drop")
		
		if global_position.y > -350 and global_position.y < -250:
			get_tree().change_scene_to_file("res://scenes/bomb successful.tscn")
		elif global_position.y < -350:
			get_tree().change_scene_to_file("res://scenes/bomb missed.tscn")
		if global_position.y > -250:
			get_tree().change_scene_to_file("res://scenes/bomb die.tscn")
			#play miss anim

	move_and_slide()

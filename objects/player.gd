extends CharacterBody2D

@export var move_speed: float = 500

func _physics_process(_delta: float) -> void:
	var move_vector := Input.get_vector("move_left", "move_right", "move_up", "move_down")
	
	velocity = move_vector * move_speed
	
	move_and_slide()

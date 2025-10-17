extends Area2D

@export var fmodEventEmitter: FmodEventEmitter2D

func on_body_enter(body: Node2D):
	if body.is_in_group("Player"):
		fmodEventEmitter.set_parameter("Intensity", 0.0)
		
func on_body_exit(body: Node2D):
	if body.is_in_group("Player"):
		fmodEventEmitter.set_parameter("Intensity", 1.0)

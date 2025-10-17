extends CanvasLayer

@export var music_toggle: CheckButton
@export var music_emitter: FmodEventEmitter2D

@export var play_1: Button
@export var emitter_1: FmodEventEmitter2D
@export var play_2: Button
@export var emitter_2: FmodEventEmitter2D
@export var play_3: Button
@export var emitter_3: FmodEventEmitter2D

func _ready() -> void:
	music_toggle.toggled.connect(toggle_music)
	
	play_1.pressed.connect(emitter_1.play)
	play_2.pressed.connect(emitter_2.play)
	play_3.pressed.connect(emitter_3.play)

func toggle_music(is_on: bool):
	if is_on:
		music_emitter.volume = 1
	else:
		music_emitter.volume = 0

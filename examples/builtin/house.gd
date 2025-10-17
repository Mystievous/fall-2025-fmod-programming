extends Area2D

@export var audioStreamPlayer: AudioStreamPlayer
var stream: AudioStreamSynchronized

const MAIN_INDEX := 0
const BASS_INDEX := 1
const DRUMS_INDEX := 2

func _ready() -> void:
	# Grab the actual stream resource from the audio player
	stream = audioStreamPlayer.stream

func on_body_enter(body: Node2D):
	if body.is_in_group("Player"):
		# Set the volume for each stream to the desired "inside house" volume
		stream.set_sync_stream_volume(MAIN_INDEX, -2.0)
		stream.set_sync_stream_volume(BASS_INDEX, -18.0)
		stream.set_sync_stream_volume(DRUMS_INDEX, -INF)
		
func on_body_exit(body: Node2D):
	if body.is_in_group("Player"):
		# Reset all volumes to full when leaving the house
		stream.set_sync_stream_volume(MAIN_INDEX, 0.0)
		stream.set_sync_stream_volume(BASS_INDEX, 0.0)
		stream.set_sync_stream_volume(DRUMS_INDEX, 0.0)

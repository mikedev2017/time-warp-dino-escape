class_name Bullet extends Node2D

@export var timer: Timer
@export var audio_stream_player: AudioStreamPlayer

var speed = 1000


func _process(delta: float) -> void:
	position += transform.x * speed * delta


func _on_timer_timeout() -> void:
	print("Bullet queue free")
	queue_free()

extends Node2D

@export var fire_rate: Timer

const BULLET = preload("res://temp/bullet.tscn")
var can_fire : bool = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	look_at(get_global_mouse_position())
	rotation_degrees = wrap(rotation_degrees, 0, 360)
	
	if rotation_degrees > 90 and rotation_degrees < 270:
		scale.y = -1
	else:
		scale.y = 1
	
	if Input.is_action_pressed("fire_primary") and can_fire:
		var bullet_instance = BULLET.instantiate()
		get_tree().root.add_child(bullet_instance)
		bullet_instance.global_position = %Marker2D.global_position
		bullet_instance.rotation = rotation
		can_fire = false
		fire_rate.start()


func _on_fire_rate_timeout() -> void:
	can_fire = true

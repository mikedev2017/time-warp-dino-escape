extends Node #placeholder for now

@export var stats: EnemyStats

var max_health: int
var attack_damage_amount: int
var speed: float
var enemy_texture: Texture2D
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	# assign variables from stats resource
	max_health = stats.max_health
	attack_damage_amount = stats.attack_damage_amount
	speed = stats.speed
	enemy_texture = stats.enemy_texture

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	Enemy_Move()
	
func Enemy_Move() -> void:
	pass
	
func Enemy_Attack() -> void:
	pass
	
func Enemy_Take_Damage() -> void:
	pass
	
func Enemy_Die() -> void:
	pass

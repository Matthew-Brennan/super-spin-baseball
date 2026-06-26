extends Node2D

# Ball and chain variables
var chain_length = 150.0  # Distance from player to ball

@export var ball_and_chain: PackedScene

func _physics_process(delta):
	# Get mouse position relative to player
	
	var mouse_pos = get_global_mouse_position()
	look_at(mouse_pos)
	var direction = (mouse_pos - global_position).normalized()
	
	# Position the ball and chain in the direction of the mouse
	ball_and_chain.global_position = global_position + direction * chain_length

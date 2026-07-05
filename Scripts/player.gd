extends Node2D

# Ball and chain variables
@export var ball_and_chain: PackedScene

var currentBnC: Sprite2D


func _ready() -> void:
	currentBnC = ball_and_chain.instantiate()
	add_child(currentBnC)
	

func _physics_process(delta):
	# Get mouse position relative to player
	
	var mouse_pos = get_global_mouse_position()
	look_at(mouse_pos)
	var direction = (mouse_pos - global_position).normalized()
	
	# Position the ball and chain in the direction of the mouse
	currentBnC.global_position = global_position + direction * currentBnC.chain_length

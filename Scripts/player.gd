extends Node2D

# Ball and chain variables
@export var ball_and_chain: PackedScene
@export var top_speed: float

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





func throw():
	#torque is r x F. r is chain length and f is mass x acceleration(which will kinda just be speed for our purposes)
	# mass and chain length a stats on the ball and chain, top speed comes from player stats and is determinded by how fast they spin
	#we're going to cheat a little and only throw foward
	# maybe add a bonus if the player actually does throw forward and alert them with a graphic that says perfect throw 
	pass

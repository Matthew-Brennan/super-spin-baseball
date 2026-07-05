extends Sprite2D


@export var bncResource: bncStats
@export var mass: float
@export var chain_length: float


func _ready():

	mass = bncResource.mass
	chain_length = bncResource.chain_length
	texture = bncResource.texture

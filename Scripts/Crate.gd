extends RigidBody2D

@export var size_increase : float = 1
@export var hits_to_destroy : int = 3
@export var weight : int = 1


# Called when the node enters the scene tree for the first time.
func _ready():
	print("Ready function called")
	print("Original Scale:", scale)
	$Sprite.set_scale(Vector2.ONE * size_increase)
	$CollisionShape2D.set_scale(Vector2.ONE * size_increase)
	print("New Scale:", scale)
	mass = weight
	
	print("Sprite2D Visible:", $Sprite.visible)
	print("Sprite2D Scale:", $Sprite.scale)
	print("Sprite2D Offset:", $Sprite.offset)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

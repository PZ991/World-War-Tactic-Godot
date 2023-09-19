extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_key_pressed(KEY_A):
		translate(Vector3(-1,0,0)/Engine.get_frames_per_second())
	
	if Input.is_key_pressed(KEY_W):
		translate(Vector3(0,1,0)/Engine.get_frames_per_second())
	if Input.is_key_pressed(KEY_S):
		translate(Vector3(0,-1,0)/Engine.get_frames_per_second())
	if Input.is_key_pressed(KEY_D):
		translate(Vector3(1,0,0)/Engine.get_frames_per_second())
	pass

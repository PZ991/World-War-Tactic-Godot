extends Node3D

class_name MainScript
var speed: float = 1000
var jumpforce: float= 2
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $RigidBody3D:
		var childrb=$RigidBody3D
	
		if(Input.is_key_pressed(KEY_W)):
			$RigidBody3D.apply_force(Vector3(0,0,speed)/Engine.get_frames_per_second())
		if(Input.is_key_pressed(KEY_S)):
			$RigidBody3D.apply_force(Vector3(0,0,-speed)/Engine.get_frames_per_second())
		if(Input.is_key_pressed(KEY_A)):
			$RigidBody3D.apply_force(Vector3(-speed,0,0)/Engine.get_frames_per_second())
		if(Input.is_key_pressed(KEY_D)):
			$RigidBody3D.apply_force(Vector3(speed,0,0)/Engine.get_frames_per_second())
		if(Input.is_key_pressed(KEY_SPACE)):
			childrb.apply_impulse(Vector3(0,jumpforce,0))
	
pass

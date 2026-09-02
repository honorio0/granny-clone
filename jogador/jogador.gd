extends Spatial

export var camSens = 0.2
onready var cam = $Camera

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _input(event):
	if event is InputEventMouseMotion:
		rotate_y(deg2rad(-event.relative.x * camSens))
		cam.rotate_x(deg2rad(-event.relative.y * camSens))
		
		cam.rotation.x = clamp(cam.rotation.x, deg2rad(-90), deg2rad(90))

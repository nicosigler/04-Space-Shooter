extends KinematicBody2D

export var health = 100
export var points = 0
export var margin = 5
export var y_range = 150
export var acceleration = 0.1

var veolcity = Vector2(0,0)

onready var VP = get_viewport_rect().size


func _ready():
	pass


func _physics_process(delta):
	if Input.is_action_pressed("Left"):
		velocity.x -= acceleration
	if Input.is_action_pressed("Right"):
		velocity.x += acceleration
	
	var collision = move_and_collide(veolcity)

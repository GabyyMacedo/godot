extends CharacterBody2D

@export var velocidade: float = 200.0
@export var velocidade_lateral: float = 150.0

func _physics_process(delta):
	var movimento = Vector2()

	if Input.is_action_pressed("ui_left"):
		movimento.x = -velocidade_lateral
	elif Input.is_action_pressed("ui_right"):
		movimento.x = velocidade_lateral

	velocity = movimento
	move_and_slide()

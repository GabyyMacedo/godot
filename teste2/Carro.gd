extends CharacterBody2D

@export var velocidade: float=200.0
@export var velocidade_giro: float=200.0

func _process(delta):
	var direcao=0
	
	if Input.is_action_pressed("ui_left"): 
		direcao=-1
	elif Input.is_action_pressed("ui_right"):
		direcao=1
	rotation+=direcao*velocidade_giro*delta

func _physis_process(delta):
	var direcao_velocidade = Vector2(0,-1).rotated(rotation)
	velocity=direcao_velocidade*velocidade
	move_and_slide()

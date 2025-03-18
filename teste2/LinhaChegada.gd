extends Area2D

signal corrida_finalizada

func _ready():
	connect("body_entered", _quando_corpo_entrar)
	
func _quando_corpo_entrar(corpo):
	if corpo.name=="Carro":
		print ("Corrida finalizada")
		corrida_finalizada.emit()

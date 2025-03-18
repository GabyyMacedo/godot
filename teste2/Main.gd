extends Node2D

@onready var contador_label=$ContadorLabel
var tempo_contagem=3

func _ready():
	contador_label.text=str(tempo_contagem)
	var contador_tempo=get_tree().create_timer(1.0)
	contador_tempo.timeout.connect(_quando_tempo_acabar)

func _quando_tempo_acabar():
	tempo_contagem-=1
	contador_label.text=str(tempo_contagem)
	
	if tempo_contagem>0:
		var novo_timer=get_tree().create_timer(1.0)
		novo_timer.timeout.connect(_quando_tempo_acabar)
	else:
		iniciar_corrida()
	
func iniciar_corrida():
	print("VAI")

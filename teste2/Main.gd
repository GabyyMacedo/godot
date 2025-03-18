extends Node2D

@onready var contador_label=$ContadorLabel
var tempo_contagem=3

func _ready():
	contador_label.text=str(tempo_contagem)
	var contador_tempo=get_tree().create_timer(1.0)
	
contador_tempo.timeout.connect(_quando_tempo_acabar)

func _quando_tempo_acabar():
	tempo_contagem-=1
	
	

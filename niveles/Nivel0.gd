extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
#var pathNexEscene = "res://niveles/Nivel2.tscn"
var pathNexEscene = preload("res://niveles/Nivel1.tscn")
signal cambiarNivel(pathNivel)
func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_Fade_in_fade_finisched():
	get_tree().change_scene("res://niveles/Nivel1.tscn")
	pass # replace with function body


func _on_PuertaDeTransicion_emitirFade_in():
	
	$GUI/Fade_in.show()
	$GUI/Fade_in.fade_in()
	pass # replace with function body


func _on_PuertaCambio_cambioNivel():
	#get_tree().change_scene(pathNexEscene)
	emit_signal("cambiarNivel",pathNexEscene)
	pass # replace with function body

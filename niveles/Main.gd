extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

#La primera vez que se cambia de nivel
func _on_Nivel0_cambiarNivel(pathNivel):
	#Formas de cambiar el nivel
	#1 forma de hacer,pero no se guardan los datos
	#get_tree().change_scene(pathNivel)
	#2 forma de hacer, eliminar escena e instaciar la nueva dentro de main
	#primero elimnamos la actual
	$Nivel0.queue_free()
	$Player.start($PositionInicio.global_position)
	var escena = pathNivel.instance()
	get_parent().add_child(escena)
	escena.connect("cambiarNivel",self, "_cambiarNivel")
	pass # replace with function body

#Esta empieza la segunda vez que cambia el nivel 
func _cambiarNivel(nivelNext):
	#Valor eliminar el nivel anterior
	#Que seria el nivel1 que no sabemos como referenciar por la tanto
	#usaremos grupos para poder acceder a el
	#var nivelActual = get_tree().get_nodes_in_group("nivel")
	#print(nivelActual)
	var nivelActual = get_tree().get_nodes_in_group("nivel")[0]
	if nivelActual.is_in_group("AntesDelFinal"):
		nivelActual.queue_free()
		#$Player.start($PositionInicio.global_position)
		$Player.queue_free()
		#---------------------------------
		var escena =nivelNext.instance()
		get_parent().add_child(escena)
		#escena.connect("cambiarNivel",self, "_cambiarNivel")
	else:
		nivelActual.queue_free()
		$Player.start($PositionInicio.global_position)
		#---------------------------------
		var escena =nivelNext.instance()
		get_parent().add_child(escena)
		escena.connect("cambiarNivel",self, "_cambiarNivel")
	
	pass

extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var nivelNext = preload("res://niveles/Bloque6.tscn")
signal cambiarNivel(nivelNext)

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_PuertaCambio_cambioNivel():
	emit_signal("cambiarNivel",nivelNext)
	pass # replace with function body

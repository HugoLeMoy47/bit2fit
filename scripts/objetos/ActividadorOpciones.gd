extends Area2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
signal habilitarOpcion

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_ActividadorOpciones_body_entered(body):
	if body.is_in_group("player"):
		body.actividarCuadro()
	pass # replace with function body

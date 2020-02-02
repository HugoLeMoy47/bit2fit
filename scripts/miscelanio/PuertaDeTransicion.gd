extends Area2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
#var escenaNivel2 = preload("res://niveles/Nivel2.tscn")
signal emitirFade_in

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_PuertaDeTransicion_body_entered(body):
	print("entro")
	emit_signal("emitirFade_in")
	#get_tree().change_scene("res://niveles/Nivel2.tscn")

	pass # replace with function body

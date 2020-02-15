extends Area2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

signal cambioNivel

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_PuertaCambio_body_entered(body):
	if body.is_in_group("player"):
		$CollisionShape2D.disabled = true
		emit_signal("cambioNivel")
	pass # replace with function body

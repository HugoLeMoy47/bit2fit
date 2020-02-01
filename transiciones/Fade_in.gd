extends ColorRect

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
signal fade_finisched


func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func fade_in():
		$AnimationPlayer.play("fade_in")
		
#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_AnimationPlayer_animation_finished(anim_name):
	emit_signal("fade_finisched")
	pass # replace with function body

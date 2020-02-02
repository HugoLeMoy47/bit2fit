extends KinematicBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var velocidad = Vector2()
export var speed =700
var gravedad = 1000
var jump = -450
var normal = Vector2(0,-1)
var jumping = false
var buenaOpcion = false 

var cuadroActividad = false

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func _physics_process(delta):
	
	#############################
	if Input.is_action_pressed("tecla_w") and cuadroActividad:
		pass
		pass
	
	
	if !$AnimationPlayer.is_playing():
		$AnimationPlayer.play("idle")
		velocidad.x = 0
	
	velocidad.y += gravedad*delta
	get_input()
	if jumping and is_on_floor():
        jumping = false
	velocidad = move_and_slide(velocidad, normal)
	#print(velocidad)
	pass
	
	
func get_input():
	if !$AnimationPlayer.is_playing() or $AnimationPlayer.current_animation == "idle":
		if Input.is_action_pressed("ui_right"):
			velocidad.x = speed
			#$Sprite.scale.x = 1
			$Sprite.flip_h = false
			$AnimationPlayer.play("walk")
		elif Input.is_action_pressed("ui_left"):
			velocidad.x = -speed
			#$Sprite.scale = -1 
			$Sprite.flip_h = true
			$AnimationPlayer.play("walk")
	
	if Input.is_action_just_pressed("tecla_space"):
			$AnimationPlayer.play("romper")
	
	if Input.is_action_pressed("ui_up") and  is_on_floor():
		jumping = true
		velocidad.y = jump

	if Input.is_action_just_released("ui_right") or Input.is_action_just_released("ui_left"):
			$AnimationPlayer.play("idle")
			velocidad.x = 0
			
	pass
	
func activarCuadro():
	cuadroActividad = true
	print(cuadroActividad)
	pass

func _on_romper_body_entered(body):
	if body.is_in_group("obstaculo"):
		#print("lo golpeo")
		#$sprite.modulate = Color(75.39, 17.07, 128.5)
		$Sprite.modulate = "#991bd9"
		body.queue_free()
	pass # replace with function body

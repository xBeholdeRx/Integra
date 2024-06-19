extends KinematicBody2D
#     переменные


func _physics_process(delta):
	
	
	
	#     движение персонажа
	if Input.is_action_just_pressed("down"):
		position.y += 32
		print (position)
	elif Input.is_action_just_pressed("up"):
		position.y -= 32
		print (position)
	elif Input.is_action_just_pressed("left"):
		position.x -= 32
		print (position)
	elif Input.is_action_just_pressed("right"):
		position.x += 32
		print (position)



extends KinematicBody2D


func _physics_process(delta):
	
	
#--------------------------------------------
	#     движение персонажа
	if Input.is_action_just_pressed("down"):
		position.y += 32
		print (position)
	if Input.is_action_just_pressed("up"):
		position.y -= 32
		print (position)
	if Input.is_action_just_pressed("left"):
		position.x -= 32
		print (position)
	if Input.is_action_just_pressed("right"):
		position.x += 32
		print (position)
#--------------------------------------------
	#     границы карты
	if position.x > 48:
		position.x = -80
	if position.x < -80:
		position.x = 48
#--------------------------------------------
	if position.y > 48:
		position.y = -80
	if position.y < -80:
		position.y = 48

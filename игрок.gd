extends CharacterBody2D

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
	if position.x > 64:
		position.x = -64
	if position.x < -64:
		position.x = 64
#--------------------------------------------
	if position.y > 64:
		position.y = -64
	if position.y < -64:
		position.y = 64



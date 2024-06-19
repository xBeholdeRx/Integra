extends Node2D
# переменные
onready var area2D = get_node("root/coin/Area2D")
var coinspawnunlocker = true
var coinspawntic = 0
var coindata = preload("res://coin.tscn")
var coininstance = coindata.instance()
var tiledots = [Vector2(-80, -80), Vector2(-48, -80), Vector2(-16, -80),Vector2(16, -80),Vector2(48, -80),
				Vector2(-80, -48), Vector2(-48, -48), Vector2(-16,-48),Vector2(16, -48),Vector2(48, -48),
				Vector2(-80, -16), Vector2(-48, -16), Vector2(-16, -16),Vector2(16, -16),Vector2(48, -16),
				Vector2(-80, 16), Vector2(-48, 16), Vector2(-16, 16),Vector2(16, 16),Vector2(48, 16),
				Vector2(-80, 48), Vector2(-48, 48), Vector2(-16, 48),Vector2(16, 48),Vector2(48, 48)]
#--------------------------------------------
func _ready():
	area2D.connect("area_entered", self, "_on_area_body_enterned")
	area2D.connect("area_exited", self, "_on_area_body_exited")
	randomize()
func spawncoin():
	var coininstance = coindata.instance()
	coininstance.set_global_position(tiledots[randi()%(24-0+1)+0])
	add_child(coininstance)
func dispawncoin():
	coininstance.queue_free()
func _on_area_body_entered(body):
	pass
func _on_area_body_exited(body):
	pass
#--------------------------------------------

func _physics_process(delta):
	if coinspawnunlocker:
		if coinspawntic == 300:
			coinspawnunlocker = false
			spawncoin()
			coinspawntic = 0
	coinspawntic += 1

extends Area2D
func _on_area_body_entered(body):
	pass
func _ready():
	$Area2D.connect("area_entered", self, "_on_area_body_enterned")

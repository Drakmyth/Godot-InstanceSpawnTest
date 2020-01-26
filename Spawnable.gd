extends Area2D

func _ready():
	# warning-ignore:return_value_discarded
	 connect("area_entered", self, "_on_area_entered")

# warning-ignore:unused_argument
func _on_area_entered(area):
	if area.name == "MouseArea":
		queue_free()
		area.position = Vector2(-20, -20)
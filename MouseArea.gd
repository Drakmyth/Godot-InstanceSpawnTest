extends Area2D

func _unhandled_input(event):
	if event.is_action_pressed("destroy"):
		position = event.position

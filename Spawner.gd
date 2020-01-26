extends Node2D

export (PackedScene) var Actor

var instance = null

func _ready():
	visible = false
	call_deferred("respawn")

func respawn():
	instance = Actor.instance()
	instance.position = position
	get_parent().add_child(instance)

func _unhandled_input(event):
	if event.is_action_pressed("respawn") && not is_instance_valid(instance):
		print(name, " respawning...")
		respawn()
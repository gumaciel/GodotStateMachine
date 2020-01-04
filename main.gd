extends Node2D


func _ready():
	print("Ready")
	return
	


func _on_semaphore_currentState_changed():
	print("_on_semaphore_currentState_changed")
	get_node("current_state").set_text("Current State: " + str(get_node("semaphore").currentState))
	pass # replace with function body

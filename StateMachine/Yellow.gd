extends Node

var fsm : StateMachine

const IMAGE =  preload("res://images/semaforo-yellow.png")

func _ready():
	pass # Replace with function body.
	
func enter():
	print("Hello from State Yellow!")
	# Exit 2 seconds later
	yield(get_tree().create_timer(2.0), "timeout")
	exit("Red")



func exit(next_state):
	fsm.change_to(next_state)

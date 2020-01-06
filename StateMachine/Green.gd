extends Node

var fsm : StateMachine

const IMAGE =  preload("res://images/semaforo-verde.png")

func _ready():
	pass # Replace with function body.
	
func enter():
	print("Hello from State Green!")
	# Exit 2 seconds later
	yield(get_tree().create_timer(2.0), "timeout")
	exit("Yellow")



func exit(next_state):
	fsm.change_to(next_state)


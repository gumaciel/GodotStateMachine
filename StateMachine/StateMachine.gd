extends Node

class_name StateMachine

signal state_changed

var current_state : Object = null
var history_state : Array = []


func _ready():
	current_state = $Green
	_enter_state();
	pass # Replace with function body.

func _enter_state():
	current_state.fsm = self
	current_state.enter()
	emit_signal("state_changed")
	pass


func change_to(new_state):
	history_state.append(current_state.name)
	current_state = get_node(new_state)
	_enter_state()

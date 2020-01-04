extends Node2D


signal currentState_changed
const STATES = {
	"RED" : preload("res://images/semaforo-vermelho.png"), 
	"YELLOW" : preload("res://images/semaforo-yellow.png"),
	"GREEN" : preload("res://images/semaforo-verde.png"), 
}
var currentState setget setCurrentState

func _init(initialState = STATES.GREEN):
	currentState = initialState
func setCurrentState(new_value):
	currentState = new_value
	print(new_value)

func change_state(currentState):
	self.currentState = currentState
	get_node("Sprite").set_texture(currentState);
	emit_signal("currentState_changed")

	
func _on_green_pressed():
	change_state(STATES.GREEN)
	
func _on_yellow_pressed():
	change_state(STATES.YELLOW)
	
func _on_red_pressed():
	change_state(STATES.RED)
	


func _on_semaphore_teste():
	pass # replace with function body


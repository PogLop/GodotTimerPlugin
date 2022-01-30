tool
extends Node

onready var tsk_node_time = $VBoxContainer/HBoxContainer2/tsk_time_slider

func _process(delta):
	if Engine.editor_hint:
		$VBoxContainer/HBoxContainer2/tsk_time.text = "Time (" + str($VBoxContainer/HBoxContainer2/tsk_time_slider.value) + ") " + "minute/s"

func _on_add_tsk_pressed():
	yield(get_tree().create_timer($VBoxContainer/HBoxContainer2/tsk_time_slider.value * 60), "timeout")
	$reminder_sound.play()

func _on_stop_alarm_pressed():
	$reminder_sound.stop()

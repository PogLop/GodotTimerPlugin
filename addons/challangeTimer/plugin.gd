tool
extends EditorPlugin

var main_panel = preload("res://addons/challangeTimer/main_panel.tscn")
var mp_instance

func _enter_tree():
	mp_instance = main_panel.instance()
	get_editor_interface().get_editor_viewport().add_child(mp_instance)
	make_visible(false)

func _exit_tree():
	if mp_instance:
		mp_instance.queue_free()

func has_main_screen():
	return true

func make_visible(visible):
	if mp_instance:
		mp_instance.visible = visible

func get_plugin_name():
	return "Timer"

func get_plugin_icon():
	return get_editor_interface().get_base_control().get_icon("Node", "EditorIcons")

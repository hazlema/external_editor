@tool
extends EditorPlugin

# Reference to the toggle button
var toggle_external_editor_button: Button

const onIcon = preload("res://addons/external_editor/on-icon.png")
const offIcon = preload("res://addons/external_editor/off-icon.png")

func _enter_tree():
	toggle_external_editor_button = Button.new()
	toggle_external_editor_button.text = "Toggle External Editor"  # Initial text
	toggle_external_editor_button.flat = true
	toggle_external_editor_button.tooltip_text = "Toggle External Editor"
	toggle_external_editor_button.pressed.connect(_on_toggle_external_editor_pressed)
	toggle_external_editor_button.theme_type_variation = "MainScreenButton"
	toggle_external_editor_button.icon = offIcon
	
	var editor_base = EditorInterface.get_base_control()

	var toolbar = editor_base.get_node_or_null("/root/@EditorNode@21272/@Panel@14/@VBoxContainer@15/@EditorTitleBar@16/@HBoxContainer@4943")  # Main toolbar HBoxContainer
	if toolbar:
		toolbar.add_child(toggle_external_editor_button)
	else:
		# Fallback: Add to base control if toolbar not found
		editor_base.add_child(toggle_external_editor_button)
		toggle_external_editor_button.position = Vector2(300, 5)  # Adjust as needed

	_update_button_state()

func _exit_tree():
	if toggle_external_editor_button:
		if toggle_external_editor_button.get_parent():
			toggle_external_editor_button.get_parent().remove_child(toggle_external_editor_button)
		toggle_external_editor_button.queue_free()
		toggle_external_editor_button = null

func _on_toggle_external_editor_pressed():
	var settings = EditorInterface.get_editor_settings()
	var using_external: bool = settings.get_setting("text_editor/external/use_external_editor")
	if using_external:
		settings.set_setting("text_editor/external/use_external_editor", false)
		print("Disabled external editor")
	else:
		settings.set_setting("text_editor/external/use_external_editor", true)
		print("Enabled external editor")

	_update_button_state()

func _update_button_state():
	var settings = EditorInterface.get_editor_settings()
	var using_external: bool = settings.get_setting("text_editor/external/use_external_editor")
	if using_external:
		toggle_external_editor_button.text = "External Editor" 
		toggle_external_editor_button.icon = onIcon
	else:
		toggle_external_editor_button.text = "Internal Editor" 
		toggle_external_editor_button.icon = offIcon

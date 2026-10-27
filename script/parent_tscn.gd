extends Sprite2D
var object

func _ready() -> void:

	pass


func _physics_process(delta: float) -> void:

	if $Button.is_hovered() and Input.is_action_just_released("right_click"):
		object = load("res://scene/menu_item.tscn").instantiate()
		add_child.call_deferred(object)

	set_meta("Parent_Pressed",  $Button.is_pressed())

	if get_meta("Parent_Pressed") == true or get_meta("button_pressed") == true:
		global_position = get_global_mouse_position()
		if get_global_mouse_position().x <= 839.5:
			scale = Vector2(1,1)
		else:
			scale = Vector2(0.5,0.5)
	if $Button.is_hovered() and Input.is_action_just_released("left_click") and get_global_mouse_position().x >= 839.5:
		queue_free()

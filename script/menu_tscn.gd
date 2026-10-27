extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	global_position = get_global_mouse_position()
	size = Vector2(200.0, 152.0)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if not get_global_rect().has_point(get_global_mouse_position()) and (Input.is_action_just_pressed("left_click") or Input.is_action_just_pressed("right_click")):
		queue_free()
	if $delete.is_pressed():
		$"..".queue_free()
	 
	if Input.is_action_just_released("left_click"):
		if $delete.is_pressed():
			print(3345)

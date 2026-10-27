extends Button
var ee = "double_lens"
var  object


func _ready() -> void:
	#button_down.connect(_on_button_pressed) 


	var ee = "double_lens"
	match ee:
		"double_lens":
			print("double_lens")
		"lens":
			print("mirror")
		"woll":
			print("woll")
		"laser":
			print("laser")

	text = "print"
#func _on_button_pressed():
#	object = load("res://scene/parent_tscn.tscn").instantiate()
#	$"..".add_child.call_deferred(object)

func _physics_process(delta: float) -> void:


	

	if Input.is_action_just_pressed("left_click") and is_hovered():
		object = load("res://scene/parent_tscn.tscn").instantiate()
		$"..".add_child.call_deferred(object)

	if is_instance_valid(object):
		object.set_meta("button_pressed",  is_pressed())

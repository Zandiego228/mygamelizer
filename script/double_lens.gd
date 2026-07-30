extends Sprite2D

var clone = 0
var clone2 = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	clone = preload("res://scene/beam.tscn").instantiate()
	clone2 = preload("res://scene/beam.tscn").instantiate()
	add_child(clone)
	add_child(clone2)
	clone.position = Vector2(-150, -60)
	clone2.rotation_degrees = $".".rotation_degrees + 180
	clone2.position = Vector2(-150, 300)
	pass
	# Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	#print($Area2D,$"../line/Beam".selff)
	clone.visible = ($Area2D == $"../line/Beam".selff)
	clone2.visible = ($Area2D == $"../line/Beam".selff)
	#clone2.visible = ($Area2D == $"../line/Beam".selff)

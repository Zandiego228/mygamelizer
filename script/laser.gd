extends Line2D
var points1 = []
var rotatt = 0
var norm
var angle_deg
var size

func _ready() -> void:
	z_index = -1
	width = 30
	default_color = Color.WHITE
	$RayCast2D.target_position = Vector2(0, -12000)

func lines(pos2, rotate):
	$RayCast2D.position = pos2
	$RayCast2D.rotation_degrees = rotate
	$RayCast2D.force_raycast_update()
	if $RayCast2D.is_colliding() and size < 10:
		points1.append(to_local($RayCast2D.get_collision_point()))
		angle_deg = rad_to_deg(($RayCast2D.to_global($RayCast2D.target_position) - $RayCast2D.global_position).bounce($RayCast2D.get_collision_normal()).angle()) + 90
		norm = ($RayCast2D.position - $RayCast2D.get_collision_point())

		lines($RayCast2D.get_parent().to_local($RayCast2D.get_collision_point()), angle_deg - $"..".global_rotation_degrees)
	else:
		points1.append(to_local($RayCast2D.to_global($RayCast2D.target_position)))
func _physics_process(_delta: float) -> void:
	$RayCast2D.position = Vector2.ZERO
	points1 = [$RayCast2D.position]
	size = 0
	lines($RayCast2D.position, rotatt)
	points = points1

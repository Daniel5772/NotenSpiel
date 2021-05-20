extends KinematicBody2D

var speed: = Vector2(1200, 6000)
var velocity: = Vector2.ZERO


func _physics_process(delta):
	velocity = calculate_move_velocity(velocity, get_direction(), speed)
	velocity = move_and_slide(velocity, Vector2.UP)
	
	
func get_direction() -> Vector2:
	return Vector2(
		Input.get_action_strength("move_right") - Input.get_action_strength("move_left"),
		-Input.get_action_strength("jump") if is_on_floor() and Input.is_action_just_pressed("jump") else 0.0
	)
	
func calculate_move_velocity(
	linear_velocity: Vector2,
	direction: Vector2,
	speed: Vector2
	) -> Vector2:
		var new_velocity: = linear_velocity
		new_velocity.x = speed.x * direction.x
		return new_velocity


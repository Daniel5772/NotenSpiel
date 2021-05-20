extends Area2D



func _ready():
	position.x = randi() %2000

func _physics_process(delta):
	position.y += 3
	


func _on_Drop_body_entered(body):
	get_tree().call_group("Gamestate", "add_drop")
	queue_free()

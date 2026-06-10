extends Area2D

@onready var timer: Timer = $Timer


func _on_body_entered(body: CharacterBody2D) -> void:
	if not Input.is_action_pressed("Admin"):
		print("You Died!")
		timer.start()
	
func _on_timer_timeout() -> void:
	get_tree().change_scene_to_file("res://Scenes/lose_screen.tscn")
	

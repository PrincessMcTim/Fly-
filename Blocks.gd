extends RigidBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
    pass # Replace with function body.


func _on_Area2D_body_entered(body):
    if "Bob" in body.name:
        body.JumpPower_jump()
    if "Beb" in body.name:
        body.JumpPower_jump()
        
    if "Bomb" in body.name:
        if global.Trigger == 1:
            print("aaaaaaaaaaaaaa")
            queue_free()
               
    

func _on_Area2D_body_exited(body):
    if "Bob" in body.name:
        body.JumpPower_off()
    if "Beb" in body.name:
        body.JumpPower_off()

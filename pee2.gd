extends RigidBody2D

var direction = 1

func _ready():
        apply_impulse(Vector2(0,0),Vector2(-2000,0))

func set_pee2_direction(dir):
    direction = dir


func _on_Area2D_body_entered(body):
    if "Bob" in body.name:
        body.JumpPower_jump()
    if "Beb" in body.name:
        body.JumpPower_jump()

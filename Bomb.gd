extends RigidBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
    pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#    pass


func _on_Area2D_body_shape_entered(body_id, body, body_shape, area_shape):
    apply_impulse(Vector2(0,0), Vector2(550,0))
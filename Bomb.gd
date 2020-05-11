extends RigidBody2D

# Declare member variables here. Examples:
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
    pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#    pass


func _on_Timer_timeout():
    $Bomb.play("Explode")
    $Fuse.play("Stop")



        


func _on_Timer2_timeout():
    global.Trigger = 1
    queue_free()


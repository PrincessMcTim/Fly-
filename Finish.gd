extends AnimatedSprite

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
    pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#    pass
func _on_Area2D_body_entered(body):
    if "Bob" in body.name:
        play("finish")
        global.bob_wins += 1
        global.beb_kill += 1
    if "Beb" in body.name:
        play("finish")
        global.beb_wins += 1
        global.bob_kill += 1
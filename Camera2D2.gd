extends Camera2D

var SPEED = 80
var SPEED2 = 60
var velocity = Vector2()
var direction = 1
var camera = 1

func _ready():
    pass


func _physics_process(delta):
    if camera == 1:
        velocity.x = SPEED * delta * direction
    elif camera == 2:
        velocity.x = -SPEED2 * delta * direction
        velocity.y = SPEED2 * delta * direction
    translate(velocity)


func _on_Timer_timeout():
    camera = 2
    global.spawnpoint = 2   

func _on_Timer2_timeout():
    SPEED = 0
    SPEED2 = 0

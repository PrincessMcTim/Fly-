extends Sprite

export(int) var SPEED = 55
var velocity = Vector2()
var direction = 1


func _ready():
    pass


func _physics_process(delta):
    velocity.x = SPEED * delta * direction
    translate(velocity)

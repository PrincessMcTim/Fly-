extends Sprite

const SPEED = 50
var velocity = Vector2()
var direction = 1


func _ready():
    pass

func set_pee_direction(dir):
    direction= dir
    if dir == -1:
        $AnimatedSprite.flip_h = true

func _physics_process(delta):
    velocity.y = -SPEED * delta * direction
    translate(velocity)

extends Node2D

var SPEED = 60
var velocity = Vector2()
var direction = 1


func _ready():
    pass


func _physics_process(delta):
    velocity.y = -SPEED * delta * direction
    translate(velocity)

func _on_Timer2_timeout():
    SPEED = 0

extends Node2D

export var pee = 0
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
    $pee1.play("blank")
    $pee2.play("blank")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
    pee = global.beb_deathcount
    if pee == 0:
        $pee1.play("0")
        $pee2.play("0")
    elif pee == 1:
        $pee1.play("0")
        $pee2.play("1")
    elif pee == 2:
        $pee1.play("0")
        $pee2.play("2")
    elif pee == 3:
        $pee1.play("0")
        $pee2.play("3")
    elif pee == 4:
        $pee1.play("0")
        $pee2.play("4")
    elif pee == 5:
        $pee1.play("0")
        $pee2.play("5")
    elif pee == 6:
        $pee1.play("0")
        $pee2.play("6")
    elif pee == 7:
        $pee1.play("0")
        $pee2.play("7")
    elif pee == 8:
        $pee1.play("0")
        $pee2.play("8")
    elif pee == 9:
        $pee1.play("0")
        $pee2.play("9")
    elif pee == 10:
        $pee1.play("1")
        $pee2.play("0")
    elif pee == 11:
        $pee1.play("1")
        $pee2.play("1")
    elif pee == 12:
        $pee1.play("1")
        $pee2.play("2")
    elif pee == 13:
        $pee1.play("1")
        $pee2.play("3")
    elif pee == 14:
        $pee1.play("1")
        $pee2.play("4")
    elif pee == 15:
        $pee1.play("1")
        $pee2.play("5")
    elif pee == 16:
        $pee1.play("1")
        $pee2.play("6")
    elif pee == 17:
        $pee1.play("1")
        $pee2.play("7")
    elif pee == 18:
        $pee1.play("1")
        $pee2.play("8")
    elif pee == 19:
        $pee1.play("1")
        $pee2.play("9")
    elif pee == 20:
        $pee1.play("2")
        $pee2.play("0")
    elif pee == 21:
        $pee1.play("2")
        $pee2.play("1")
    elif pee == 22:
        $pee1.play("2")
        $pee2.play("2")
    elif pee == 23:
        $pee1.play("2")
        $pee2.play("3")
    elif pee == 24:
        $pee1.play("2")
        $pee2.play("4")
    elif pee == 25:
        $pee1.play("2")
        $pee2.play("5")
    elif pee == 26:
        $pee1.play("2")
        $pee2.play("6")
    elif pee == 27:
        $pee1.play("2")
        $pee2.play("7")
    elif pee == 28:
        $pee1.play("2")
        $pee2.play("8")
    elif pee == 29:
        $pee1.play("2")
        $pee2.play("9")
    elif pee == 30:
        $pee1.play("3")
        $pee2.play("0")
    elif pee == 31:
        $pee1.play("3")
        $pee2.play("1")
    elif pee == 32:
        $pee1.play("3")
        $pee2.play("2")
    elif pee == 33:
        $pee1.play("3")
        $pee2.play("3")
    elif pee == 34:
        $pee1.play("3")
        $pee2.play("4")
    elif pee == 35:
        $pee1.play("3")
        $pee2.play("5")
    elif pee == 36:
        $pee1.play("3")
        $pee2.play("6")
    elif pee == 37:
        $pee1.play("3")
        $pee2.play("7")
    elif pee == 38:
        $pee1.play("3")
        $pee2.play("8")
    elif pee == 39:
        $pee1.play("3")
        $pee2.play("9")
    elif pee == 40:
        $pee1.play("4")
        $pee2.play("0")

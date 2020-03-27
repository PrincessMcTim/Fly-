extends KinematicBody2D

const PEE = preload("res://pee.tscn")
const PEE2 = preload("res://pee2.tscn")
const BUILD1 = preload("res://Spawn1.tscn")
const BUILD2 = preload("res://Spawn2.tscn")

var speed = 750
var jump_speed = 1900
var gravity = 2800
var velocity = Vector2()
var direction = Vector2()
var distance = Vector2()
var jump = 1
var pee_load = 1
var timer = 1
var build = 0
var pre = 1

export (int, 0, 200) var push = 100

func _physics_process(delta):
    global.peefill_beb = pee_load
    direction.x = int(Input.is_action_pressed("D"))-int(Input.is_action_pressed("A"))
    
    distance.x = speed*delta
    velocity.x = (direction.x*distance.x)/delta
    velocity.y += gravity*delta
    velocity = move_and_slide(velocity, Vector2.UP, false, 4, PI/4, false)
    
    
    for index in get_slide_count():
        var collision = get_slide_collision(index)
        if collision.collider.is_in_group("bodies"):
            collision.collider.apply_central_impulse(-collision.normal * push)
    
    if pre == 3:
        pre = 1
    
    if is_on_floor():
        velocity.y = 0
        direction.y = 0
        jump = 1
        
    if Input.is_action_just_pressed("W"):
        if jump == 1:
            velocity.y = -jump_speed
            direction.y = 1
            jump = 0

    if Input.is_action_just_pressed("E"):
        var pee = null
        if pee_load > 1:
            pee = PEE.instance()
            pee_load = pee_load - 1

            get_parent().add_child(pee)
            pee.position = $Position2D.global_position
        
    if Input.is_action_just_pressed("Q"):
        var pee2 = null
        if pee_load > 1:
            pee2 = PEE2.instance()
            pee_load = pee_load - 1
            
            get_parent().add_child(pee2)
            pee2.position = $Position2D2.global_position

    if Input.is_action_just_pressed("2"):
        var spawn1 = null
        if build > 0:
            if pre == 1:
                spawn1 = BUILD1.instance()
            elif pre == 2:
                spawn1 = BUILD2.instance()
            
            get_parent().add_child(spawn1)
            spawn1.position = $PositionBuild.global_position
            
            build = build -1


    if Input.is_action_just_pressed("preview"):
        pre = pre + 1
        
    if Input.is_action_pressed("preview"):
        if pre == 1:
            $PositionBuild/Spawn.play("build")
        elif pre == 2:
            $PositionBuild/Spawn.play("build2")

    if Input.is_action_just_released("preview"):
        $PositionBuild/Spawn.play("0")
        

func build5():
    build = build + 5

func pee5():
    pee_load = pee_load + 4
            
func JumpPower_jump():
    jump = 1

func JumpPower_off():
    jump = 0
    
func death():
    if timer == 1:
        $Timer.start()
        $Timer2.start()
        $AnimatedSprite.play("death")
        timer = 0

func _on_Timer_timeout():
    global.beb_deathcount += 1
    queue_free()


func _on_Timer2_timeout():
    $AnimatedSprite.play("die")

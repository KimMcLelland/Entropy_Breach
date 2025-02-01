extends KinematicBody2D

const GRAVITY = 200.0
const WALK_SPEED = 200
var velocity = Vector2(0, 1)

func _ready():
	pass 


#func _process(delta):
#	pass

func _physics_process(delta):
	velocity.y += delta * GRAVITY
	if Input.is_action_pressed("ui_left"):
		velocity.x = -WALK_SPEED
		$AnimatedSprite.animation = "left"
	elif Input.is_action_pressed("ui_right"):
		velocity.x =  WALK_SPEED
		$AnimatedSprite.animation = "right"
	else:
		velocity.x = 0
	
	move_and_slide(velocity)

extends CharacterBody2D

var speed = 200

@onready var Sync = $MultiplayerSynchronizer

func _ready():
	Sync.set_multiplayer_authority(str(name).to_int())
	Sync.position = global_position

func _physics_process(delta):
	if $MultiplayerSynchronizer.is_multiplayer_authority():
		var direction = Vector2.ZERO
		if Input.is_key_pressed(KEY_W): direction.y -= 1
		elif Input.is_key_pressed(KEY_S): direction.y += 1
		if Input.is_key_pressed(KEY_A): direction.x -= 1
		elif Input.is_key_pressed(KEY_D): direction.x += 1
		global_position += direction.normalized() * speed * delta
		Sync.position = global_position

extends MultiplayerSynchronizer

@export var position:Vector2:
	set(val):
		if is_multiplayer_authority():
			position = Vector2(300,300)
		else:
			get_parent().position = val

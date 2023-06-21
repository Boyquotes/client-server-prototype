extends CharacterBody2D

func _enter_tree():
	$MultiplayerSynchronizer.set_multiplayer_authority(str(name).to_int())

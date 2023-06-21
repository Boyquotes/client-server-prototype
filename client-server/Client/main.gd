extends Node2D

var multiplayer_peer = ENetMultiplayerPeer.new()

@onready var Menu = $CanvasLayer/Menu
const Port = 9999
const Address = "localhost"
var Player = preload("res://player_character/player_character.tscn")

func _on_join_pressed():
	
	multiplayer_peer.create_client(Address, Port)
	multiplayer.multiplayer_peer = multiplayer_peer
	Menu.hide()

func add_player_character(id=1):
#	var character = Character.instantiate()
#	character.name = str(id)
#	character.position = $Spawn.global_position
#	add_child(character)
	pass

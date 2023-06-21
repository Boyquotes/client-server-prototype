extends Node2D

var multiplayer_peer = ENetMultiplayerPeer.new()
const Port = 9999
const MaxClients = 10
var Player = preload("res://player_character/player_character.tscn")

func _ready():
	multiplayer_peer.create_server(Port,MaxClients)
	multiplayer.multiplayer_peer = multiplayer_peer
	multiplayer_peer.peer_connected.connect(func(id): add_player_character(id))

func add_player_character(id=1):
	var character = Player.instantiate()
	character.name = str(id)
	character.global_position = Vector2(200,300)
	add_child(character)

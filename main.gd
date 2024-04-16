extends Node

@onready var player = $Player
@onready var inventory_interface = $UI/InventoryInterface

func _ready():
	inventory_interface.set_player_invetory_data(player.inventory_data)

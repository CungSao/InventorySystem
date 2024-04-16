extends Node

@onready var player = $Player
@onready var inventory_interface = $UI/InventoryInterface

func _ready():
	player.toggle_inventory.connect(toggle_inventory_interface)
	inventory_interface.set_player_invetory_data(player.inventory_data)


func toggle_inventory_interface():
	inventory_interface.visible = not inventory_interface.visible
	
	if inventory_interface.visible:
		Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
	else:
		Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
		

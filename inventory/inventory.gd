extends PanelContainer

const SLOT = preload("res://inventory/slot.tscn")

@onready var item_grid = $MarginContainer/ItemGrid

func _ready():
	const TEST_INV = preload("res://test_inv.tres")
	populate_item_grid(TEST_INV.slot_datas)

func populate_item_grid(slot_datas:Array[SlotData]):
	if item_grid.get_children() != []:
		for child in item_grid.get_children():
			child.queue_free()
	
	for slot_data in slot_datas:
		var slot = SLOT.instantiate()
		item_grid.add_child(slot)

		if slot_data:
			slot.set_slot_data(slot_data)

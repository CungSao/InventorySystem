extends PanelContainer

@onready var texture_rect = $MarginContainer/TextureRect
@onready var quantity = $Quantity

func set_slot_data(slot_data:SlotData):
	var item_data = slot_data.item_data
	texture_rect.texture = item_data.texture
	tooltip_text = "%s\n%s" % [item_data.name, item_data.description]
	
	if slot_data.quantity > 1:
		quantity.text = "x%s" % slot_data.quantity
		quantity.show()

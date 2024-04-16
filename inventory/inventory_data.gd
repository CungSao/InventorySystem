class_name InventoryData extends Resource

signal inventory_updated(inventory_data:InventoryData)
signal inventory_interact(inventory_data:InventoryData, index:int, button:int)
@export var slot_datas:Array[SlotData]

func grab_slot_data(index) -> SlotData:
	var slot_data = slot_datas[index]
	
	if !slot_data: return
	slot_datas[index] = null
	inventory_updated.emit(self)
	return slot_data
	
func on_slot_clicked(index:int, button:int):
	inventory_interact.emit(self, index, button)


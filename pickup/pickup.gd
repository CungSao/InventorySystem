extends RigidBody3D

@export var slot_data:SlotData

@onready var sprite = $Sprite3D
@onready var player = $"../Player"


func _ready():
	sprite.texture = slot_data.item_data.texture
	
	
func _physics_process(delta):
	sprite.rotate_y(delta)
	

func _on_area_3d_body_entered(body):
	if body.inventory_data.pick_up_slot_data(slot_data):
		queue_free()

extends PanelContainer


@onready var tool_axe: Button = $MarginContainer/HBoxContainer/ToolAxe
@onready var tool_tilling: Button = $MarginContainer/HBoxContainer/ToolTilling
@onready var tool_watering_can: Button = $MarginContainer/HBoxContainer/ToolWateringCan
@onready var tool_corn: Button = $MarginContainer/HBoxContainer/ToolCorn
@onready var tool_tomato: Button = $MarginContainer/HBoxContainer/ToolTomato


func _on_tool_axe_pressed() -> void:
	ToolManager.select_tool(DataTypes.Tools.AxeWood)
	tool_tilling.button_pressed = false
	tool_watering_can.button_pressed = false
	tool_corn.button_pressed = false
	tool_tomato.button_pressed = false


func _on_tool_tilling_pressed() -> void:
	ToolManager.select_tool(DataTypes.Tools.TillGround)
	tool_axe.button_pressed = false
	tool_watering_can.button_pressed = false
	tool_corn.button_pressed = false
	tool_tomato.button_pressed = false



func _on_tool_watering_can_pressed() -> void:
	ToolManager.select_tool(DataTypes.Tools.WaterCrops)
	tool_axe.button_pressed = false
	tool_tilling.button_pressed = false
	tool_corn.button_pressed = false
	tool_tomato.button_pressed = false


func _on_tool_corn_pressed() -> void:
	ToolManager.select_tool(DataTypes.Tools.PlantCrop)
	tool_axe.button_pressed = false
	tool_tilling.button_pressed = false
	tool_watering_can.button_pressed = false
	tool_tomato.button_pressed = false


func _on_tool_tomato_pressed() -> void:
	ToolManager.select_tool(DataTypes.Tools.PlantTomato)
	tool_axe.button_pressed = false
	tool_tilling.button_pressed = false
	tool_watering_can.button_pressed = false
	tool_corn.button_pressed = false

	
func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_RIGHT:
			ToolManager.select_tool(DataTypes.Tools.None)
			tool_axe.button_pressed = false
			tool_tilling.button_pressed = false
			tool_watering_can.button_pressed = false
			tool_corn.button_pressed = false
			tool_tomato.button_pressed = false

		

extends Node


var selected_tool: DataTypes.Tools = DataTypes.Tools.None


signal tool_select(tool: DataTypes.Tools)


func select_tool(tool: DataTypes.Tools) -> void:
    selected_tool = tool
    tool_select.emit(tool)

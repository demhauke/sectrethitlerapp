extends Panel


signal deletePlayer
signal addPlayer(name: String)

var isAdd: bool = false

func _ready() -> void:
	if isAdd:
		$HBoxContainer/Button.text = "hinzufügen"
		$HBoxContainer/TextEdit.visible = true
		$HBoxContainer/Label.visible = false
	else:
		$HBoxContainer/Button.text = "löschen"
		$HBoxContainer/TextEdit.visible = false
		$HBoxContainer/Label.visible = true



func get_text() -> String:
	return $HBoxContainer/TextEdit.text


func _on_button_pressed() -> void:
	if isAdd:
		addPlayer.emit($HBoxContainer/TextEdit.text)
	else:
		deletePlayer.emit()
	

extends Control


@onready var playerListContainer := $VBoxContainer
@onready var PlayerListElement := get_tree().get_nodes_in_group("PlayerSettingsListElement")

@onready var playerSettingsScene = load("res://scenes/PlayerSettings.tscn")

func _ready() -> void:
	addElement(true)

	
	
	
	
func addElement(isAdd: bool) -> void:
	var scene = playerSettingsScene.instantiate()
	scene.isAdd = isAdd
	playerListContainer.add_child(scene)
	
	

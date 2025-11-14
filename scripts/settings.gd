extends Control


@onready var playerListContainer := $GUIContainer/PlayerListContainer
@onready var PlayerListElement := get_tree().get_nodes_in_group("PlayerSettingsListElement")

@onready var playerSettingsScene = load("res://scenes/PlayerSettings.tscn")

@onready var liberalsLabel := $GUIContainer/SettingsContainer/LiberalPanel/HBoxContainer/Label
@onready var fascistssLabel := $GUIContainer/SettingsContainer/FascismPanel/HBoxContainer/Label


var amountOfLiberals: int = 5
var amountofFascists: int = 3

func _ready() -> void:
	
	liberalsLabel.text = "Liberals: " + str(amountOfLiberals)
	fascistssLabel.text = "Fascist: " + str(amountofFascists)
	
	updatePlayerList()
	
	
func addElement() -> void:
	var scene = playerSettingsScene.instantiate()
	playerListContainer.add_child(scene)
	
	
	
func updatePlayerList() -> void:
	for child in playerListContainer.get_children():
		child.queue_free()
	for i in range(amountOfLiberals + amountofFascists):
		addElement()
	


func libs_plus_pressed() -> void:
	amountOfLiberals += 1
	liberalsLabel.text = "Liberals: " + str(amountOfLiberals)
	updatePlayerList()

func libs_minus_pressed() -> void:
	amountOfLiberals += -1
	liberalsLabel.text = "Liberals: " + str(amountOfLiberals)
	updatePlayerList()


func fasc_plus_pressed() -> void:
	amountofFascists += 1
	fascistssLabel.text = "Fascist: " + str(amountofFascists)
	updatePlayerList()


func fasc_minus_pressed() -> void:
	amountofFascists += -1
	fascistssLabel.text = "Fascist: " + str(amountofFascists)
	updatePlayerList()

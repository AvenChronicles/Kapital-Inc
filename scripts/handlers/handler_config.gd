class_name HandlerConfig
extends Node

static var ref : HandlerConfig

## Singleton check
func _enter_tree() -> void:
	if not ref :
		ref = self
	else :
		queue_free()


func load_config() -> Dictionary :
	var file = "res://data/config.json"
	var content : Dictionary = FileLoader.load_JSON(file)
	return content

class_name HandlerConfig
extends Node

static var ref : HandlerConfig

var config_content : Dictionary

var save_content : Dictionary = {}

var config_save_file : String = "res://saves/config.json"

static var lang : String = "EN"

## Singleton check
func _enter_tree() -> void:
	if not ref :
		ref = self
	else :
		queue_free()


func _init() -> void:
	if FileAccess.file_exists(config_save_file) :
		save_content = FileLoader.load_JSON(config_save_file)
		lang = save_content["lang"]
	language_select()


func load_config() -> Dictionary :
	var file = "res://data/config/config.json"
	config_content = FileLoader.load_JSON(file)
	return config_content


func config() -> Dictionary :
	if config_content : 
		return config_content
	else :
		return load_config()



func language_select(_lang: String = "")-> void:
	if _lang != "" : lang = _lang.to_lower().strip_edges()
	TranslationServer.set_locale(lang)
	save()


func save()-> void :
	save_content["lang"] = lang
	FileLoader.save_JSON(save_content, config_save_file)

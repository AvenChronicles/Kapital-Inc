class_name FileDisplay
extends Control

@export var rich_text : RichTextLabel


func _ready() -> void:
	rich_text.text = "Coucou"
	rich_text.text = JSON.stringify( HandlerConfig.ref.load_config() )

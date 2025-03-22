class_name UserInterface
extends Control


@export var menu_language : PopupMenu


func _ready() -> void:
	change_language()


func _on_language_id_pressed(id: int) -> void:
	change_language(menu_language.get_item_text(id))


func change_language(_choice : String= "")-> void:
	if _choice != "": HandlerConfig.ref.language_select(_choice)
	menu_language.title = HandlerConfig.ref.lang.to_upper()

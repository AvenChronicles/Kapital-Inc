class_name FileLoader

static func load_JSON(file) -> Dictionary :
	var json_as_text = FileAccess.get_file_as_string(file)
	var json_as_dict = JSON.parse_string(json_as_text)
	return json_as_dict


static func save_JSON(dic : Dictionary, file: String) -> void :
	var save_file = FileAccess.open(file,FileAccess.WRITE)
	save_file.store_string(JSON.stringify(dic))

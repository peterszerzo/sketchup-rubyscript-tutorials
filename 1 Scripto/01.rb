# Sketchup Ruby Script Tutorial
# Lesson 0

require 'sketchup'

def draw

	model = Sketchup.active_model
	entities = model.entities

	model.start_operation "Points"
	
	entities.add_point(Geom::Point3d.new(0, 0, 0))
	
	model.commit_operation

end

UI.menu("PlugIns").add_item("Scripto 01") { draw }
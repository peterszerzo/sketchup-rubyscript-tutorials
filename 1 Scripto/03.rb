# Sketchup Ruby Script Tutorial
# Lesson 0

require 'sketchup'

def draw

	model = Sketchup.active_model
	entities = model.entities

	model.start_operation "Points"
	
	for i in 0..10
		point = Geom::Point3d.new(0, 0, i)
		entities.add_point(point)
	end
	
	model.commit_operation

end

UI.menu("PlugIns").add_item("Scripto 03") { draw }
# Sketchup Ruby Script Tutorial
# Lesson 0

require 'sketchup'

def draw

	model = Sketchup.active_model
	entities = model.entities

	model.start_operation "Points"
	
	point1 = Geom::Point3d.new(0, 0, 0)
	point2 = Geom::Point3d.new(0, 0, 2.5)
	
	entities.add_point(point1)
	entities.add_point(point2)
	
	model.commit_operation

end

UI.menu("PlugIns").add_item("Scripto 02") { draw }
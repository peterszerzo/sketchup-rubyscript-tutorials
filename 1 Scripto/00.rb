require 'sketchup'

def draw

	model = Sketchup.active_model
	entities = model.entities

	model.start_operation "Points"
	
	point1 = Geom::Point3d.new(0, 0, 0)
	point2 = Geom::Point3d.new(1, 1, 0)
	
	line = entities.add_line(point1, point2)
	
	model.commit_operation

end

UI.menu("PlugIns").add_item("Draw") { draw }
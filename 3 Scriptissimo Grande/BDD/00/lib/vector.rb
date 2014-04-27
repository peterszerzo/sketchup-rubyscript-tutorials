class Vector
	
	def initialize(x = 0, y = 0, z = 0)
		
		@x = x
		@y = y
		@z = z
		
	end
	
	attr_reader :x
	attr_reader :y
	attr_reader :z
	
	def scale(factor = 1)
	
		@x = @x * factor
		@y = @y * factor
		@z = @z * factor
	
	end
	
	
	def length
	
		(@x ** 2 + @y ** 2 + @z ** 2) ** 0.5
	
	end
	
	
	def normalize
	
		d = (@x ** 2 + @y ** 2 + @z ** 2) ** 0.5
		
		if d != 0
		  @x = @x / d
		  @y = @y / d
		  @z = @z / d
		end   
	
	end
	
	
	def dot_product(another_vector)
	
		@x * another_vector.x + @y * another_vector.y + @z * another_vector.z
	
	end
	
	
	def cross_product(another_vector)
	
		x = @y * another_vector.z - @z * another_vector.y
		y = @z * another_vector.x - @x * another_vector.z
		z = @x * another_vector.y - @y * another_vector.x
		Vector.new(x, y, z)
	
	end
	
	
	def equals?(another_vector)
	
		(@x == another_vector.x) && (@y == another_vector.y) && (@z == another_vector.z)
	
	end
	
end
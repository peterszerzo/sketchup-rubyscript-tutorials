require 'vector'

describe Vector do
	
	before do
	
		@vector = Vector.new
	
	end

	it "x-coordinate is zero" do
	
	    @vector.x.should eq(0)	   
	     
	end
	
	it "y-coordinate is zero" do
	
	    @vector.y.should eq(0)	   
	     
	end
	
	it "z-coordinate is zero" do
	
	    @vector.z.should eq(0)	   
	     
	end

end
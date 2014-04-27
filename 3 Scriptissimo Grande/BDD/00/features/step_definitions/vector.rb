Given /^the vector is (.*) (.*) (.*)$/ do |x, y, z|

	@vector = Vector.new(x.to_f, y.to_f, z.to_f)

end

Given /^the other vector is (.*) (.*) (.*)$/ do |x, y, z|

	@vector2 = Vector.new(x.to_f, y.to_f, z.to_f)

end

When /^I normalize$/ do

	@vector.normalize()

end

When /^I scale by (.*)$/ do |factor|

	@vector.scale(factor.to_i)

end

Then /^its length should be (.*)$/ do |length|

	@vector.length.should eq(length.to_f)

end

Then /^the vector should be (.*) (.*) (.*)$/ do |x, y, z|

	@test_vector = Vector.new(x.to_f, y.to_f, z.to_f)
	@vector.should be_equals(@test_vector)

end

Then /^their dot product should be (.*)$/ do |dot_product|

	@vector.dot_product(@vector2).should eq(dot_product.to_f)

end

Then /^their cross product should be (.*) (.*) (.*)$/ do |x, y, z|

	@test_vector = Vector.new(x.to_f, y.to_f, z.to_f)
	@vector.cross_product(@vector2).should be_equals(@test_vector)

end
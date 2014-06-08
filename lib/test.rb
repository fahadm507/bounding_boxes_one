require_relative 'bounding_box'
require_relative 'bounding_area'


box1 = BoundingBox.new(0.0, 0.0, 2.0, 1.0)
box2 = BoundingBox.new(2.0, 1.0, 3.0, 4.0)
area= BoundingArea.new([box2,box1])

area.contains_point?(0.5, 0.5)
binding.pry

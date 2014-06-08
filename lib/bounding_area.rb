#=========first class starts here=================
require_relative 'bounding_box'
require 'pry'

class BoundingArea
  attr_reader :top, :bottom, :left, :right
  def initialize(rects)
    @rects = rects
    @rects.each do |point|
      @left = point.left
      @right = point.right
      @top = point.top
      @bottom = point.bottom
    end
  end

  def contains_point?(x,y)

    if x == 0 && y == 0
      false
    elsif (x >= @left) && (x <= @right) && (y >= @bottom) && (y <= @top)
      true
    else
      false
    end

  end
end
#==================#first class ends here ============================


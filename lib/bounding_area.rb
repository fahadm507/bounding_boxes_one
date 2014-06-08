#=========first class starts here=================
require_relative 'bounding_box'
require 'pry'

class BoundingArea
  attr_reader :top, :bottom, :left, :right
  def initialize(rects)
    rects.each do |rect|
      @left = rect.left
      @right = rect.right
      @top = rect.top
      @bottom = rect.bottom
    end
  end

  def contains_point?(x,y)
    if x == 0 && y == 0
      false
    elsif ((x >= @left) && (x <= @right) && (y >= @bottom) && (y <= @top))
      true
    else
      false
    end

  end
end
#==================#first class ends here ============================


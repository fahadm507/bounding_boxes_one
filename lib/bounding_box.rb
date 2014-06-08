require 'pry'
require_relative 'bounding_area'

class BoundingBox
  attr_reader :width, :height, :top, :bottom, :left, :right
  def initialize(left,right,bottom,top)
    @left = left.to_f
    @right = right.to_f
    @top = top.to_f
    @bottom = bottom.to_f
  end

  def height
    @height = @top - @bottom
  end

  def width
    @width = @right- @left
  end

  def contains_point?(x,y)
    if (x >= @left && x <= @right) && (y >= @bottom && y <=@top)
      true
    else
      false
    end
  end
end
#===============end of the second class ================

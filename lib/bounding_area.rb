#=========first class starts here=================
require_relative 'bounding_box'
require 'pry'

class BoundingArea
  attr_reader :areas, :top, :bottom, :left, :right
  def initialize(areas)
    @areas = areas
    @areas.each do |area|
      @left = area.left
      @right = area.right
      @top = area.top
      @bottom = area.bottom
    end
  end

  def contains_point?(x,y)

    if x == 0 && y == 0
      false
    elsif x >= @left && x <= @right && y <= @bottom && y <= @top
      true
    else
      false
    end

  end
end
#==================#first class ends here ============================


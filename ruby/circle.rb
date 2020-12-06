# frozen_string_literal: true

# Circle class
class Circle < Shape
  @rad = 0

  def initialize(radius)
    super()
    @rad = radius
  end

  def perimeter
    2 * @rad * Math::PI
  end

  def area
    (@rad**2) * Math::PI
  end
end

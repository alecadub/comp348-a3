# frozen_string_literal: true

# Rectangle class
class Rectangle < Shape
  @height = 0
  @width = 0

  def initialize(height, width)
    super()
    @height = height
    @width = width
  end

  def perimeter
    (2 * @height) + (2 * @width)
  end

  def area
    @height * @width
  end
end

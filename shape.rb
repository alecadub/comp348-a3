class Shape

  def initialize

  end
  def print
    puts "Name: #{name} Perimeter: #{perimeter} Area: #{area}"
  end
  def perimeter
    return nil
  end
  def area
    return nil
  end

end
class Circle < Shape
  @rad = 0
  def initialize(radius)
    @rad = radius
  end

  def perimeter
    return 2*@rad*Math::PI
  end

  def area
    return (@rad**2)*Math::PI
  end

end

class Rectangle < Shape
  @height = 0
  @width = 0
  def initialize(height,width)
    @height = height
    @width = width
  end
  def perimeter
    return (2*@height)+(2*@width)
  end
  def area
    return @height*@width
  end
end
class Ellipse < Shape
  @smin = 0
  @smaj = 0

  def initialize(smin,smaj)
    @smin = smin
    @smaj = smaj
  end
  def area
    return Math::PI*@smin*@smaj
  end
  def eccentricity
    return Math.sqrt((@smaj**2)-(@smin**2))
  end
end
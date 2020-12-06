# frozen_string_literal: true

# Shape class
class Shape

  def initialize; end

  def print
    puts "Name: #{self.class.name} Perimeter: #{!perimeter.nil? ? perimeter : 'Undefined'} Area: #{!area.nil? ? area : 'undefined'}"
  end

  def perimeter
    nil
  end

  def area
    nil
  end
end

# frozen_string_literal: true

require_relative 'shape'
require_relative 'circle'
require_relative 'ellipse'
require_relative 'rectangle'

puts 'Q1:'
c = Circle.new(1)
e = Ellipse.new(1, 2)
r = Rectangle.new(1, 2)

c.print
e.print
r.print

puts 'Q2 & Q3:'

File.readlines('./input.txt').each do |line|
  line_array = line.split(' ')
  if line_array[0] == 'shape'
    s = Shape.new
    s.print
  end
  if line_array[0] == 'circle'
    if line_array[1]&.to_i&.positive?
      c = Circle.new(line_array[1].to_i)
      c.print
    else
      puts 'Error: Invalid circle'
    end
  end
  if line_array[0] == 'rectangle'
    if line_array[1]&.to_i&.positive? && line_array[2]&.to_i&.positive?
      r = Rectangle.new(line_array[1].to_i, line_array[2].to_i)
      r.print
    else
      puts 'Error: Invalid rectangle'
    end
  end
  if line_array[0] == 'ellipse'
    if line_array[1]&.to_i&.positive? && line_array[2]&.to_i&.positive?
      e = Ellipse.new(line_array[1].to_i, line_array[2].to_i)
      e.print
    else
      puts 'Error: Invalid ellipse'
    end
  end
end

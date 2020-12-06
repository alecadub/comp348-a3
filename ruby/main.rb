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

stats = {
  'Shape': 0,
  'Circle': 0,
  'Rectangle': 0,
  'Ellipse': 0
}

File.readlines('./input.txt').each do |line|
  line_array = line.split(' ')
  if line_array[0] == 'shape'
    s = Shape.new
    s.print
    stats[:Shape] = stats[:Shape] + 1
  end
  if line_array[0] == 'circle'
    if line_array[1].to_i >= 0
      c = Circle.new(line_array[1].to_i)
      c.print
      stats[:Shape] = stats[:Shape] + 1
      stats[:Circle] = stats[:Circle] + 1
    else
      puts 'Error: Invalid circle'
    end
  end
  if line_array[0] == 'rectangle'
    if line_array[1].to_i >= 0 && line_array[2].to_i >= 0
      r = Rectangle.new(line_array[1].to_i, line_array[2].to_i)
      r.print
      stats[:Shape] = stats[:Shape] + 1
      stats[:Rectangle] = stats[:Rectangle] + 1
    else
      puts 'Error: Invalid rectangle'
    end
  end
  if line_array[0] == 'ellipse'
    if line_array[1].to_i >= 0 && line_array[2].to_i >= 0
      e = Ellipse.new(line_array[1].to_i, line_array[2].to_i)
      e.print
      stats[:Shape] = stats[:Shape] + 1
      stats[:Circle] = stats[:Ellipse] + 1
    else
      puts 'Error: Invalid ellipse'
    end
  end
end

stats.each do |key, value|
  puts "#{key} : #{value}"
end

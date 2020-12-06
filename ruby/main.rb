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

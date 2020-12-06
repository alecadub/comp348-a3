# frozen_string_literal: true

# Ellipse class
class Ellipse < Shape
  @smin = 0
  @smaj = 0

  def initialize(smin, smaj)
    super()
    @smin = smin
    @smaj = smaj
  end

  def area
    Math::PI * @smin * @smaj
  end

  def eccentricity
    Math.sqrt((@smaj**2) - (@smin**2))
  end
end

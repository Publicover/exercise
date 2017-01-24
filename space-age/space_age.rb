class SpaceAge
  attr_reader :seconds

  def initialize(age)
    @age = age
  end

  def seconds
    @age
  end

  def on_earth
    @age / 31_557_600.00
  end

  def on_mercury
    @age / (0.2408467 * 31_557_600.00)
  end

  def on_venus
    @age / (0.61519726 * 31_557_600.00)
  end

  def on_mars
    @age / (1.8808158 * 31_557_600.00)
  end

  def on_jupiter
    @age / (11.862615 * 31_557_600.00)
  end

  def on_saturn
    @age / (29.447498 * 31_557_600.00)
  end

  def on_uranus
    @age / (84.016846 * 31_557_600.00)
  end

  def on_neptune
    @age / (164.79132 * 31_557_600.00)
  end

end

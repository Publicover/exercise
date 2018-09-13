# tri
class Triangle
  attr_reader :sides

  def initialize(sides)
    @sides = sides
  end

  def equilateral?
    if sides.include?(0)
      return false
    else
      if sides[0] == sides[1] && sides[1] == sides[2]
        true
      else
        false
      end
    end
  end

  def isosceles?
    unless violates_equal?
      if sides.include?(0)
        return false
      else
        if sides[0] == sides[1] || sides[1] == sides[2] || sides[0] == sides[2]
          true
        else
          false
        end
      end
    end
  end

  def scalene?
    unless violates_equal?
      if sides[0] != sides[1] && sides[1] != sides[2] && sides[0] != sides[2]
        true
      else
        false
      end
    end
  end

  private

  def violates_equal?
    if sides[0] + sides[1] <= sides[2] || sides[1] + sides[2] <= sides[0] || sides[0] + sides[2] <= sides[1]
      true
    else
      false
    end
  end
end

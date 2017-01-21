class Date

  def leap?
    raise RuntimeError, "Implement this yourself instead of using Ruby's implementation."
  end

  alias gregorian_leap? leap?
  alias julian_leap? leap?
end

class Year < Date

  def self.leap?(year)
    if year % 4 && ( year % 100 != 0 && year % 400 == 0)
      true
    end
  end

end

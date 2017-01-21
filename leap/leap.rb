# class Date
#
#   def leap?
#     raise RuntimeError, "Implement this yourself instead of using Ruby's implementation."
#   end
#
#   alias gregorian_leap? leap?
#   alias julian_leap? leap?
# end

class Year

  def self.leap?(year)
    (year % 4 == 0 && year % 100 != 0) || (year % 4 == 0 && (year % 100 == 0 && year % 400 == 0))
  end


end

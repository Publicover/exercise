# class Date
#
#   def leap?
#     raise RuntimeError, "Implement this yourself instead of using Ruby's implementation."
#   end
#
#   alias gregorian_leap? leap?
#   alias julian_leap? leap?
# end
# year
class Year
  def self.leap?(year)
    # (year % 4 == 0 && year % 100 != 0) || (year % 4 == 0 && (year % 100 == 0 && year % 400 == 0))
    (year % 4).zero? && year % 100 != 0 ||
    (year % 4).zero? && (year % 100).zero? && (year % 400).zero?
  end
end

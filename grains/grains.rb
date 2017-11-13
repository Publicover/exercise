# exercism grains
class Grains
  def self.square(number)
    full_count = 2
    raise ArgumentError if number < 1 || number > 64
    return number if number == 1 || number == 2
    (number - 2).times do
      full_count *= 2
    end
    full_count
  end

  def self.total
    total_squares = 64
    (1..total_squares).inject(0) { |sum, x| sum + square(x) }
  end
end

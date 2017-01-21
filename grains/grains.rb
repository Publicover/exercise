class Grains

  def self.square(number)
    full_count = 2
    if number < 1 || number > 64
      raise ArgumentError
    elsif number == 1 || number == 2
      return number
    else
      (number - 2).times do
        full_count *= 2
      end
    end
    full_count
  end

  def self.total
    # full_total = 2
    total_squares = 64
    # (total_squares - 2).times do
    #   full_count *= 2
    # end
    # full_count
    # 18_446_744_073_709_551_615
    (1..total_squares).inject(0) {|sum, x| sum + square(x)}
  end

end

# exercism difference
class Squares
  def initialize(number)
    @number = number
  end

  def square_of_sum
    square_array = (1..@number).to_a
    square_sum = 0
    square_array.each do |num|
      square_sum += num
    end
    square_sum**2
  end

  def sum_of_squares
    square_array = (1..@number).to_a
    square_sum = 0
    square_array.each do |num|
      square_sum += num * num
    end
    square_sum
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

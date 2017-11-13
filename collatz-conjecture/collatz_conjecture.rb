# exercism collatz
class CollatzConjecture
  def self.steps(number)
    raise ArgumentError if number < 1
    counter = 0
    until number == 1
      number.even? ? number /= 2 : number = number * 3 + 1
      counter += 1
    end
    counter
  end
end

class CollatzConjecture

  def self.steps(number)
    if number < 1
      raise ArgumentError
    else
      counter = 0
      until number == 1
        if number % 2 == 0
          number = number / 2
          counter += 1
        else
          number = number * 3 + 1
          counter += 1
        end
      end
      counter
    end
  end
end

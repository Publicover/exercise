class Fixnum

  def to_roman

    num = self

    numbers = {
      "M" => 1000,
      "D" => 500,
      "C" => 100,
      "L" => 50,
      "X" => 10,
      "V" => 5,
      "I" => 1
    }

    case num
    when 1
      "I"
    end

  end

end

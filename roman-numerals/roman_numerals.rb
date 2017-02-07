class Fixnum

  attr_reader :numeral

  def to_roman
    x = self
    y = ""

    (x / 1_000).times { y << "M" }
    x = (x % 1_000)

    (x / 900).times { y << "CM" }
    x = (x % 900)

    (x / 500).times { y << "D" }
    x = (x % 500)

    (x / 400).times { y << "CD" }
    x = (x % 400)

    (x / 100).times { y << "C" }
    x = (x % 100)

    (x / 90).times { y << "XC" }
    x = (x % 90)

    (x / 50).times { y << "L" }
    x = (x % 50)

    (x / 40).times { y << "XL" }
    x = (x % 40)

    (x / 10).times { y << "X" }
    x = (x % 10)

    (x / 9).times { y << "IX" }
    x = (x % 9)

    (x / 5).times { y << "V"}
    x = (x % 5)

    (x / 4).times { y << "IV" }
    x = (x % 4)

    (x / 1).times { y << "I" }
    y
  end

end

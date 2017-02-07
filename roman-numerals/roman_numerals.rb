class Fixnum

  attr_reader :numeral

  def to_roman
    x = self
    y = ""

    (x / 1_000).times do
      y << "M"
    end

    x = (x % 1_000)

    (x / 900).times do
      y << "CM"
    end

    x = (x % 900)

    (x / 500).times do
      y << "D"
    end

    x = (x % 500)

    (x / 400).times do
      y << "CD"
    end

    x = (x % 400)

    (x / 100).times do
      y << "C"
    end

    x = (x % 100)

    (x / 90).times do
      y << "XC"
    end

    x = (x % 90)

    (x / 50).times do
      y << "L"
    end

    x = (x % 50)

    (x / 40).times do
      y << "XL"
    end

    x = (x % 40)

    (x / 10).times do
      y << "X"
    end

    x = (x % 10)

    (x / 9).times do
      y << "IX"
    end

    x = (x % 9)

    (x / 5).times do
      y << "V"
    end

    x = (x % 5)

    (x / 4).times do
      y << "IV"
    end

    x = (x % 4)

    (x / 1).times do
      y << "I"
    end

    y
  end

end

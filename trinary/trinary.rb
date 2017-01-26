class Trinary
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def to_decimal
    if number =~ /[^210]/
      return 0
    else
      decimal_numbers = []
      total = 0
      digits = (number.split("")).reverse
      digits.each_with_index do |value, index|
        decimal_numbers << ((3 ** index) * value.to_i)
      end
      total = decimal_numbers.inject(0){|sum,x| sum + x }
      total.to_i
    end
  end

end

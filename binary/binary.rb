class Binary
  # attr_reader :number

  def self.to_decimal(number)

    if number =~ /[^10]/
      raise ArgumentError
    else
      decimal_numbers = []
      total = 0
      digits = (number.split("")).reverse
      digits.each_with_index do |value, index|
        decimal_numbers << ((2 ** index) * value.to_i)
      end
      total = decimal_numbers.inject(0){|sum,x| sum + x }
      total.to_i
    end

  end
end

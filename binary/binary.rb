class Binary
  attr_reader :number

  # def self.valid_number?(number)
  #   /0?1?/ === number
  # end

  def self.to_decimal(number)
    if /0?1?/ === number.to_s
      decimal_numbers = []
      total = 0
      digits = (number.split("")).reverse

      digits.each_with_index do |value, index|
        decimal_numbers << ((2 ** index) * value.to_i)
        # total += ((2 ** index) * value.to_i)
      end
      total = decimal_numbers.inject(0){|sum,x| sum + x }
      total.to_i
      # total
    else
      raise ArgumentError
    end
  end
end

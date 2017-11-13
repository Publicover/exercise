# luhn
class Luhn
  def self.valid?(number)
    number.gsub!(/\s/, '')

    return false if number.length < 2 || number =~ /[^0-9]/
    number.prepend('0') if number.length.even?
    input_digits = number.reverse.split('')
    output_digits = []

    input_digits.each_with_index do |digit, index|
      if index.odd?
        if digit.to_i * 2 > 9
          output_digits << ((digit.to_i * 2) - 9)
        else
          output_digits << (digit.to_i * 2)
        end
      else
        output_digits << digit.to_i
      end
    end

    sum_of_digits = output_digits.inject(0) { |sum, x| sum + x }
    (sum_of_digits % 10).zero? ? true : false
  end
end

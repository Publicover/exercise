# phone
class PhoneNumber
  attr_reader :number

  def initialize(number)
    @number = sanitize(number)
  end

  def area_code
    @number[0..2]
  end

  def middle_numbers
    @number[3..5]
  end

  def last_numbers
    @number[6..9]
  end

  def to_s
    "(#{area_code}) #{middle_numbers}-#{last_numbers}"
  end

  private

  def sanitize(number)
    if number.length < 10 ||
       (number.length == 11 && number[0] != '1') ||
       (number.length == 12 && number[0] == '1') ||
       number =~ /[a-z]/
      @number = '0000000000'
    elsif number.length == 11 && number[0] == '1'
      @number = number[1..10]
    else
      @number = number.gsub(/[^\d]/, '')
    end
  end
end

class PhoneNumber

  attr_reader :number

  def initialize(phone_number)

    invalid_number = "0000000000"

    if phone_number.length == 11 && phone_number[0] == "1"
      @number = phone_number[1..10]
    elsif phone_number.length == 10 && phone_number[0] == "1"
      @number = phone_number
    elsif phone_number.length == 11
      @number = invalid_number
    elsif phone_number.length == 12 && phone_number[0] == "1"
      @number = invalid_number
    elsif phone_number =~ /[a-z]/ || phone_number.length <= 10
      @number = invalid_number
    elsif phone_number =~ /(\d{10})/
      @number = phone_number
    else
      @number = phone_number.gsub!(/[^\d]/, "")
    end

    # if phone_number =~ /[a-z]/ || phone_number.length <= 10
    #   @number = invalid_number
    # elsif phone_number.length == 11 && phone_number[0] == "1"
    #   @number = phone_number[1..10]
    # elsif phone_number.length == 10 && phone_number[0] == "1"
    #   @number = phone_number
    # elsif phone_number.length > 10
    #   @number = invalid_number
    # else
    #   @number = phone_number.gsub!(/[^\d]/, "")
    # end

    # if phone_number =~ /(\d{10})/
    #   @number = phone_number
    # elsif phone_number.length == 11 && phone_number[0] == "1"
    #   phone_number[0] = ""
    #   @number = phone_number
    # elsif phone_number =~ /[a-z]/ || phone_number.length <= 10
    #   @number = invalid_number
    # else
    #   @number = phone_number.gsub!(/[^\d]/, "")
    # end

  end

  # def start_with_1
  #   if phone_number[0] == "1"
  #     true
  #   else
  #     false
  #   end
  # end

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

end

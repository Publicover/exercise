class PhoneNumber

  attr_reader :number

  def initialize(phone_number)
    if phone_number.length == 11 && phone_number[0] == "1"
      phone_number[0] = ""
      @number = phone_number
    elsif phone_number.length == 10 && phone_number[0] == "1"
      @number = phone_number
    elsif phone_number.length == 11
      @number = "0000000000"
    elsif phone_number.length == 12 && phone_number[0] == "1"
      @number = "0000000000"
    elsif phone_number =~ /abc/ || phone_number.length <= 10
      @number = "0000000000"
    elsif phone_number =~ /a/
      @number = "0000000000"
    else
      @number = phone_number.gsub!(/[^\d]/, "")
    end
  end

  def area_code
    @number[0..2]
  end

end

class PhoneNumber

  attr_reader :number

  def initialize(phone_number)
    if phone_number =~ /[^abc]/
    # if phone_number =~ /\d\s()-/
      @number = phone_number.gsub!(/[^\d]/, "")
    else
      @number = "0000000000"
    end
  end

end

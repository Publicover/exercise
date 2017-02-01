class PhoneNumber

  attr_reader :number

  def initialize(number)
    @number = sanitize(number)
  end

  private

    def sanitize(number)
      if number =~ /[a-z]/ || number.length <= 10
        "0000000000"
      elsif number.length == 11 && number[0] == "1"
        number = number[1..10]
      elsif number.length == 10 && number[0] == "1"
        number = number
      else
        number = number.gsub!(/[^\d]/, "")
      end
    end

end

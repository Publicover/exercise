class PhoneNumber

  attr_reader :number

  def initialize(phone_number)

    if phone_number =~ /abc/ || phone_number.length < 10
      @number = "0000000000"
    else

      @number = phone_number.gsub!(/[^\d]/, "")

    end
  end

    # replacement_rules = {
    #   " " => "",
    #   "(" => "",
    #   ")" => "",
    #   "-" => ""
    # }
    #
    # matcher = /#{replacement_rules.keys.join('|')}/
    #
    # @number = phone_number.gsub(matcher, replacement_rules)


end

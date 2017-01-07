class Raindrops

  def self.convert(number)
    number_string = ""


    if number % 3 == 0 && number % 5 == 0 && number % 7 == 0
      number_string << "PlingPlangPlong"
    elsif number % 3 == 0 && number % 5 == 0
      number_string << "PlingPlang"
    elsif number % 5 == 0 && number % 7 == 0
      number_string << "PlangPlong"
    elsif number % 3 == 0 && number % 7 == 0
      number_string << "PlingPlong"
    elsif number % 3 == 0
      number_string << "Pling"
    elsif number % 5 == 0
      number_string << "Plang"
    elsif number % 7 == 0
      number_string << "Plong"
    else
      number_string << number.to_s
    end

  end

end

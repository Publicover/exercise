# raindrops
class Raindrops
  def self.convert(number)
    number_string = ''

    if (number % 3).zero? && (number % 5).zero? && (number % 7).zero?
      number_string << 'PlingPlangPlong'
    elsif (number % 3).zero? && (number % 5).zero?
      number_string << 'PlingPlang'
    elsif (number % 5).zero? && (number % 7).zero?
      number_string << 'PlangPlong'
    elsif (number % 3).zero? && (number % 7).zero?
      number_string << 'PlingPlong'
    elsif (number % 3).zero?
      number_string << 'Pling'
    elsif (number % 5).zero?
      number_string << 'Plang'
    elsif (number % 7).zero?
      number_string << 'Plong'
    else
      number_string << number.to_s
    end
  end
end

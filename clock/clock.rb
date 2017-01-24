class Clock

  def self.at(hour, minute)
    if hour < 10 && minute < 10
      "0#{hour}:0#{minute}"
    elsif hour < 24 && minute < 10
      "#{hour}:0#{minute}"
    elsif hour >= 24 && minute < 10
      if hour % 24 < 10 && minute < 10
        "0#{hour % 24}:0#{minute}"
      else
        "#{hour % 24}:0#{minute}"
      end
    end
  end

end

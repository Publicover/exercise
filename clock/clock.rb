class Clock

  def self.at(hour, minute)

    # hour = hour % 24
    # extra_hour = minute / 60
    # hour += extra_hour
    # extra_minute = minute / 60
    hour += (minute / 60)
    minute = minute % 60

    if hour < 10 && minute < 10
      "0#{hour}:0#{minute}"
    elsif hour < 24 && minute < 10
      "#{hour}:0#{minute}"
    elsif hour < 24 && minute >=10
      "0#{hour}:#{minute}"
    elsif hour >= 24 && minute < 10
      if hour % 24 < 10 && minute < 10
        "0#{hour % 24}:0#{minute}"
      else
        "#{hour % 24}:0#{minute}"
      end
    # elsif hour >= 24 && minute >= 10
    #   "#{hour}:#{minute}"
    else
      "hold, please"
    end

  end

end

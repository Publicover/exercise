class Clock

  def self.at(hour, minute)

    # if hour < 10 && minute < 10
    #   "0#{hour}:0#{minute}"
    # elsif hour < 24 && minute < 10
    #   "#{hour}:0#{minute}"
    # elsif hour < 24 && minute >=10
    #   "0#{hour}:#{minute}"
    # elsif hour >= 24 && minute < 10
    #   if hour % 24 < 10 && minute < 10
    #     "0#{hour % 24}:0#{minute}"
    #   else
    #     "#{hour % 24}:0#{minute}"
    #   end
    # elsif hour >= 24 && minute >= 10
    #   "#{hour}:#{minute}"
    # else
    #   "hold, please"
    # end

    hour += (minute / 60)
    hour = hour % 24
    minute = minute % 60

    if hour < 0
      hour = 24 - (hour % 24)
    end

    if hour < 10 && minute < 10
      "0#{hour}:0#{minute}"
    elsif hour < 10 && minute >= 10
      "0#{hour}:#{minute}"
    elsif hour >= 10 && minute < 10
      "#{hour}:0#{minute}"
    else
      "#{hour}:#{minute}"
    end
  end

  def +(extra_minute)
    minute += extra_minute
  end

end

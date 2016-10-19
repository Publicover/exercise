class Hamming

  

  def self.compute(first, second)
    the_first = first.split('')
    the_second = second.split('')
    counter = 0

    unless the_first.length == the_second.length
      raise ArgumentError.new
    end

    the_first.each_with_index do |letter, i|
      if letter != the_second[i]
        counter += 1
      end
    end
    counter
  end


end

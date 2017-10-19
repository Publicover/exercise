class RunLengthEncoding

  def self.encode(input)
    raw_data = input.split("")
    data_counts_array = []
    encoded_data = ""
    data_counts_hash = Hash.new(0)

    raw_data.each_with_index do |letter, i|
      if letter == raw_data[i - 1]
        data_counts_hash[letter] += 1
      else
        data_counts_hash.map {|k, v| v == 1 ? data_counts_array << "#{k}" : data_counts_array << "#{v}#{k}"}
        data_counts_hash = Hash.new(0)
        data_counts_hash[letter] += 1
      end
    end
    data_counts_hash.map {|k, v| v == 1 ? data_counts_array << "#{k}" : data_counts_array << "#{v}#{k}"}
    data_counts_array.each do |element|
      encoded_data << element
    end
    encoded_data
  end

  def self.decode(input)
    # if it doesn't have any numbers, just dump into string and return that
    if /^([^0-9]*)$/ =~ input
      return input
    # if the input contains numbers, do some stuff
    else
      # split the inital string into an array
      raw_letter_data = input.split("")
      # initialize the final string
      decoded_data = ""

      # take the input array and the elements' indecies for iteration
      raw_letter_data.each_with_index do |letter, i|
        # if the element is a digit and the following element is also a digit
        if /\d/ =~ letter && /\d/ =~ raw_letter_data[i + 1]
          # use those digits to create a number of times to push the element to the final string
          ("#{letter}#{raw_letter_data[i + 1]}".to_i).times do |number|
            # push to string
            decoded_data << raw_letter_data[i + 2]
          end
        # if the element is a digit and neither following nor previous elements are digits
        elsif /\d/ =~ letter && /\D/ =~ raw_letter_data[i + 1] && /\D/ =~ raw_letter_data[i - 1]
          # use the single digit to push to the string that number of times
          letter.to_i.times do |number|
            # push to string
            decoded_data << raw_letter_data[i + 1]
          end
        # # if the element is not a digit and both previous and next elements are not digits
        # elsif /\D/ =~ letter && /\D/ =~ raw_letter_data[i + 1] && /\D/ =~ raw_letter_data[i - 1]
        #   # push single letter to string
        #   decoded_data << letter

        #if the element is not a digit and what comes after is not number
      elsif /\D/ =~ letter && /\D/ =~ raw_letter_data[i + 1]
          # push single letter to string
          decoded_data << letter
        #if the element is not a digit and what comes before is not a digit and what comes after is a digit
        elsif /\D/ =~ letter && /\D/ =~ raw_letter_data[i - 1] && /\d/ =~ raw_letter_data[i + 1]
          decoded_data << letter



        end
      end
      # call the final string
      decoded_data

    end

  end

end

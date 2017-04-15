class RunLengthEncoding

  def self.encode(input, input_hash = Hash.new(0))
    input_array = input.split("")
    answer_string = ""

    input_array.each_with_index do |word, index|
      if word == input_array[0] || word == input_array[index - 1]
        input_hash[word] += 1
      else
        input_hash.each do |key, value|
          if value > 1
            answer_string << value.to_s
          end
          answer_string << key.to_s
        end
        input_hash = Hash.new(0)
        input_hash[word] += 1
      end
    end

    input_hash.each do |key, value|
      if value > 1
        answer_string << value.to_s
      end
      answer_string << key.to_s
    end
    answer_string

  end

  def self.decode(input)
    letter_array = input.split("")
    answer_string = ""
    letter_array.each_with_index do |letter, index|
      if letter == letter.to_i.to_s 
        (letter.to_i).times do
          answer_string << letter_array[index + 1]
        end
      end
    end
    answer_string
  end

end

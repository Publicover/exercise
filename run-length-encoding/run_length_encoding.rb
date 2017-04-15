class RunLengthEncoding

  # def initialize(input)
  #   @input = input
  # end

  def self.encode(input)
    input_array = input.split("")
    input_hash = Hash.new(0)
    answer_string = ""

    input_array.each do |word|
      input_hash[word] += 1
    end

    input_hash.each do |key, value|
      answer_string << value.to_s
      answer_string << key.to_s
    end
    answer_string
  end

  def self.decode(input)
    letter_array = input.split("")
    answer_string = ""
    letter_array.each_with_index do |letter, index|
      if letter  == letter.to_i.to_s
        (letter.to_i).times do
          answer_string << letter_array[index + 1]
        end
      end
    end
    answer_string
  end

end


# one pound chicken breast
# three quarter cup mayo
# three tablespoons finely minced celery
# three tablespoons finely minced onion
# one tablespoon brown sugar
# one eighth teaspoon garlic powder
# pinch of salt

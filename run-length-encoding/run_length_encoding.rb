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

end

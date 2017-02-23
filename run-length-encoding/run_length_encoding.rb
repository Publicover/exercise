class RunLengthEncoding

  def self.encode(input)

    original_data = input.split("")
    input_key = input.split("").uniq
    compressed_data = Hash[input_key.map { |key| [key, 0]}]
    final_product = ""

    original_data.each do |letter|
      compressed_data[letter] += 1
    end

    compressed_data.each do |key, value|
      final_product << value.to_s
      final_product << key
    end

    final_product
  end

  def self.decode(input)

    original_data = input.split("")
    final_product = ""

    original_data.each_with_index do |item, index|
      if /\d/ =~ item
        item.to_i.times do
          final_product << original_data[index + 1]
        end
      end
    end
    
    final_product
  end


end

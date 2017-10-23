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
    if /^([^0-9]*)$/ =~ input
      return input
    else
      raw_letter_data = input.split("")
      decoded_data = ""

      raw_letter_data.each_with_index do |letter, i|
        if /\d/ =~ letter && /\d/ =~ raw_letter_data[i + 1]
          ("#{letter}#{raw_letter_data[i + 1]}".to_i).times do |number|
            decoded_data << raw_letter_data[i + 2]
          end
      elsif /\D/ =~ letter && /\d/ =~ raw_letter_data[i - 1]
        next
      elsif /\d/ =~ letter && /\D/ =~ raw_letter_data[i + 1] && /\D/ =~ raw_letter_data[i - 1]
        letter.to_i.times do |number|
          decoded_data << raw_letter_data[i + 1]
        end
      elsif /\D/ =~ letter && /\D/ =~ raw_letter_data[i + 1]
          decoded_data << letter
      elsif /\D/ =~ letter && /\D/ =~ raw_letter_data[i - 1] && /\d/ =~ raw_letter_data[i + 1]
        decoded_data << letter
      elsif /\D/ =~ letter && letter == raw_letter_data[-1]
        decoded_data << letter
        end
      end
      decoded_data
    end
  end
end

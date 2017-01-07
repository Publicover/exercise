class Complement

  def self.of_dna(test_string)
    final_word = ""
    letter_array = test_string.split("")

    letter_array.each do |letter|
      unless letter == "C" || letter == "G" || letter == "T" || letter == "A"
        final_word << ""
        break
      end
      case letter
      when "C"
        letter = "G"
      when "G"
        letter = "C"
      when "T"
        letter = "A"
      when "A"
        letter = "U"
      end
      final_word << letter
    end
    if final_word.size != test_string.size
      final_word = ""
    end
    final_word
  end
end

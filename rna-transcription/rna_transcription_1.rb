# complement
class Complement
  def self.case_element(element)
    case element
    when 'C'
      'G'
    when 'G'
      'C'
    when 'T'
      'A'
    when 'A'
      'U'
    end
  end

  def self.of_dna(test_string)
    final_word = ''
    letter_array = test_string.split('')

    letter_array.each do |letter|
      unless letter == 'C' || letter == 'G' || letter == 'T' || letter == 'A'
        final_word << ''
        break
      end
      final_word << case_element(letter)
      # final_word << letter
    end
    final_word.size != test_string.size ? final_word = '' : final_word
  end
end

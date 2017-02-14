class Brackets

  def self.paired?(brackets)
    bracket_characters = brackets.chars
    bracket_counter = 0
    bracket_characters.each_with_index do |character, i|
      if bracket_counter < 0
        break
      elsif character == "[" || character == "{" || character == "("
        bracket_counter += 1
      elsif (character == "]" && bracket_characters[i - 1] != "{")
        bracket_counter -= 1
      elsif (character == "]" && bracket_characters[i - 1] != "(")
        bracket_counter -= 1
      elsif (character == "}" && bracket_characters[i - 1] != "[")
        bracket_counter -= 1
      elsif (character == "}" && bracket_characters[i - 1] != "(")
        bracket_counter -= 1
      elsif (character == ")" && bracket_characters[i - 1] != "{")
        bracket_counter -= 1
      elsif (character == ")" && bracket_characters[i - 1] != "[")
        bracket_counter -= 1
      end
    end
    true_if_not_zero(bracket_counter)
  end

  def self.true_if_not_zero(number)
    if number == 0
      true
    else
      false
    end
  end

end

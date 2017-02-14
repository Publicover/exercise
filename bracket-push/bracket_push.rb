class Brackets

  def self.paired?(brackets)

    bracket_counter = 0
    brackets.chars.each_with_index do |character, index|
      if bracket_counter < 0
        break
      elsif character == "[" || character == "{" || character == "("
        bracket_counter += 1
      elsif character == "]" && (character[index - 1] != "{" || character[index - 1] != "(")
        bracket_counter -= 1
      elsif character == "}" && (character[index - 1] != "[" || character[index - 1] != "(")
        bracket_counter -= 1
      elsif character == ")" && (character[index - 1] != "{" || character[index - 1] != "[")
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

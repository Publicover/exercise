class Pangram

  def self.pangram?(phrase)

    alphabet = ("a".."z").to_a
    phrase_array = (phrase.downcase).split("")
    (phrase_array.sort).uniq

    if phrase.length < 26
      false
    else
      if alphabet & phrase_array == alphabet
        true
      else
        false
      end
    end
  end








    # elsif
    #   phrase_array = phrase.split("")
    #   phrase_array.delete_if {|x| x == " "}
    #   phrase_array.each do |letter|
    #     phrase_array.delete_if {|letter| alphabet.include? letter}
    #     alpha_count += 1
    #   end
    #   if phrase_array.empty? && alpha_count > 25
    #     true
    #   else
    #     false
    #   end
    # else
    #   false


end

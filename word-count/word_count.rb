class Phrase

  def initialize(phrase)
    @phrase = phrase
  end

  # def word_count
  #
  #   phrase_hash = {}
  #   phrase_array = @phrase.downcase.split
  #
  #   # phrase_array.each { |word| phrase_hash[word] = 0 }
  #   # phrase_hash.each_key do |word|
  #   #   # if phrase_hash[word] > 1
  #   #     phrase_hash[word] += 1
  #   #   # end
  #   # end
  #   # phrase_hash
  #
  #   phrase_array.each do |word|
  #     word.tr!(".,:!&@$%^&", "")
  #     if word[0] && word[-1] == "'"
  #       word.gsub!("''", "")
  #     end
  #     if phrase_hash.include?(word)
  #       phrase_hash[word] += 1
  #     else
  #       phrase_hash[word] = 1
  #     end
  #   end
  #   phrase_hash
  #
  #   # phrase_array
  # end

  def word_count

    phrase_array = @phrase.downcase.gsub(/[.,:!&@$%^&]/, " ").split
    phrase_hash = Hash.new(0)

    phrase_array.each do |word|
      phrase_hash[word] += 1
    end

    phrase_hash

  end

end

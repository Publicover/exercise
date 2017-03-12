class Phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def word_count

    phrase_hash = {}
    # phrase_array = @phrase.split(/[^\w]/)
    phrase_array = @phrase.downcase.split(/[^\w]\b/)

    # phrase_array.each { |word| phrase_hash[word] = 0 }
    # phrase_hash.each_key do |word|
    #   # if phrase_hash[word] > 1
    #     phrase_hash[word] += 1
    #   # end
    # end
    # phrase_hash

    phrase_array.each do |word|
      word.tr!(",:!&@$%^&", "")
      if phrase_hash.include?(word)
        phrase_hash[word] += 1
      else
        phrase_hash[word] = 1
      end
    end
    phrase_hash

    # phrase_array
  end

end

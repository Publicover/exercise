class Phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def word_count

    phrase_words = @phrase.downcase.gsub(/[.,:!&@$%^&]/, " ").split
    phrase_counts = Hash.new(0)

    phrase_words.each do |word|
      if word[0] == "'" && word[-1] == "'"
        word.tr!("'", "")
      end
      phrase_counts[word] += 1
    end

    phrase_counts

  end

end

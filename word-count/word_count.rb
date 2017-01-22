class Phrase
  attr_accessor :words

  def initialize(words)
    @words = words
  end

  def word_count
    words.split(/\w/).size
  end

end

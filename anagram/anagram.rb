# exercism anagram
class Anagram
  def initialize(word)
    @word = word
  end

  def match(array)
    answer = []

    sorted_word = @word.downcase.split('').sort
    array.each do |word|
      next if word.downcase == @word.downcase
      a = word.downcase.split('').sort
      answer << word if a == sorted_word
    end
    answer
  end
end

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
      if a == sorted_word
        answer << word
      end
    end
    answer
  end
end

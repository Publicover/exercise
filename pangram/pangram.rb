# pangram
class Pangram
  def self.pangram?(phrase)
    alphabet = ('a'..'z').to_a
    phrase_array = phrase.downcase.split('')
    phrase_array.sort.uniq

    if phrase.length < 26
      false
    else
      alphabet & phrase_array == alphabet
    end
  end
end

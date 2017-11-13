# exercism acronym
class Acronym
  def self.abbreviate(phrase)
    # words = phrase.gsub(/-/, ' ').split(' ')
    words = phrase.tr('-', ' ').split(' ')
    abbreviation = ''
    words.each do |word|
      abbreviation << word[0].upcase
    end
    abbreviation
  end
end

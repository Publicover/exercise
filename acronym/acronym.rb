class Acronym

  def self.abbreviate(phrase)
    words = phrase.gsub(/-/, " ").split(" ")
    abbreviation = ""
    words.each do |word|
      abbreviation << word[0].upcase
    end
    abbreviation
  end

end

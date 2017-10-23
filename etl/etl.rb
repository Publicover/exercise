class ETL

  def self.transform(letter_hash)
    results = Hash.new

    letter_hash.each {|key, value| value.each {|x| results[x.downcase] = key}}
    results
  end

end

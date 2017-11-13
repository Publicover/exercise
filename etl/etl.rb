# exercism etl
class ETL
  def self.transform(letter_hash)
    results = {}

    letter_hash.each { |key, value| value.each { |x| results[x.downcase] = key } }
    results
  end
end

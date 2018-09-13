# isogram
class Isogram
  def self.is_isogram?(string)
    input_letters = string.downcase.gsub(/\s+/, '').gsub(/\-/, "").split("")
    unique_letters = input_letters.uniq
    input_letters.size == unique_letters.size
  end
end
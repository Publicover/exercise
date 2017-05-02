class Atbash

  LETTERS = {"a" => "z", "b" => "y", "c" => "x", "d" => "w", "e" => "v",
             "f" => "u", "g" => "t", "h" => "s", "i" => "r", "j" => "q",
             "k" => "p", "l" => "o", "m" => "n", "n" => "m", "o" => "l",
             "p" => "k", "q" => "j", "r" => "i", "s" => "h", "t" => "g",
             "u" => "f", "v" => "e", "w" => "d", "x" => "c", "y" => "b",
             "z" => "a", "1" => "1", "2" => "2", "3" => "3", "4" => "4",
             "5" => "5", "6" => "6", "7" => "7", "8" => "8", "9" => "9"}

  def self.encode(word)
    cipher = ""
    letters = word.downcase.gsub(/[^a-z1-9]/, "").split("")
    letters.each do |letter|
      cipher << LETTERS[letter]
    end
    cipher.scan(/.{5}|.+/).join(" ")
  end

end

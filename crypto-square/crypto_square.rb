class Crypto

  def initialize(text)
    @text = text
  end

  def normalize_plaintext
    @text.downcase.gsub!(/[^a-z1-9]/, "")
  end

  def size
    Math.sqrt(@text.length).floor
  end

end

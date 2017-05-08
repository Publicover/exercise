class Crypto

  def initialize(plaintext)
    @plaintext = plaintext
  end

  def normalize_plaintext
    @plaintext.downcase.gsub(/\W/, "")
  end

  def size
    (normalize_plaintext.length**0.5).ceil
  end

  def plaintext_segments
    normalize_plaintext.scan(/.{1,#{size}}/)
  end

  # def ciphertext
  #
  # end

end

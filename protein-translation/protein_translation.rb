class InvalidCodonError < StandardError
end

# translation
class Translation
  def self.of_codon(codon)
    case codon
    when 'AUG'
      'Methionine'
    when 'UUU', 'UUC'
      'Phenylalanine'
    when 'UUA', 'UUG'
      'Leucine'
    when 'UCU', 'UCC', 'UCA', 'UCG'
      'Serine'
    when 'UAU', 'UAC'
      'Tyrosine'
    when 'UGU', 'UGC'
      'Cysteine'
    when 'UGG'
      'Tryptophan'
    when 'UAA', 'UAG', 'UGA'
      'STOP'
    else
      raise InvalidCodonError.new("That's not a codon")
    end
  end

  def self.of_rna(strand)
    strand_translations = []
    codons = strand.scan(/.../)
    codons.each do |codon|
      if codon == 'UAA' || codon == 'UAG' || codon == 'UGA'
        break
      else
        strand_translations << of_codon(codon)
      end
    end
    strand_translations
  end
end

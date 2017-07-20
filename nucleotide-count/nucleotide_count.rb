class Nucleotide

  def self.from_dna(strand)
    @strand = strand
  end

  def count(nucleotide)
    # @strand = 0
    # @nucleotide = nucleotide
    total = 0
    @strand.split("").each do |letter|
      if letter == nucleotide
        total += 1
      end
    end
    total
  end

  def histogram
  #   final_histogram = { 'A' => 0, 'T' => 0, 'C' => 0, 'G' => 0 }
  #   @strand.split("").each do |letter|
  #     if letter == final_histogram[letter]
  #       final_histogram[letter] += 1
  #     end
  #   end
  #   final_histogram
  end

end

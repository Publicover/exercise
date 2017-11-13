# nucleotide
class Nucleotide
  def initialize(strand)
    @strand = strand
  end

  def self.from_dna(strand)
    raise ArgumentError if /[^ATCG]/ =~ strand
    Nucleotide.new(strand)
  end

  def count(nucleotide)
    total = 0
    @strand.chars.each do |letter|
      total += 1 if letter == nucleotide
    end
    total
  end

  def histogram
    final_histogram = { 'A' => 0, 'T' => 0, 'C' => 0, 'G' => 0 }
    temp_array = @strand.split('')
    temp_array.each do |letter|
      final_histogram[letter] += 1
    end
    final_histogram
  end
end

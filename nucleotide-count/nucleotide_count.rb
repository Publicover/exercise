class Nucleotide

  def initialize(strand)
    @strand = strand
  end

  def self.from_dna(strand)
    Nucleotide.new(strand)
  end

  def count(nucleotide)
    # @strand = 0
    # @nucleotide = nucleotide
    total = 0
    @strand.chars.each do |letter|
      if letter == nucleotide
        total += 1
      end
    end
    total
  end

  def histogram
    final_histogram = { 'A' => 0, 'T' => 0, 'C' => 0, 'G' => 0 }
    @strand.chars.each do |letter|
      if letter == final_histogram[letter]
        final_histogram[letter] += 1
      end
    end
    final_histogram
  end

end


# class Nucleotide
#   def self.from_dna(strand)
#     Nucleotide.new(strand)
#   end
#
#   def initialize(strand)
#     fail ArgumentError if strand.match(/[^ATCG]/)
#     @strand = strand
#   end
#
#   def count(nucleotide)
#     @strand.chars.count { |c| c == nucleotide }
#   end
#
#   def histogram
#     %w(A T C G).each_with_object({}) do |c, hist|
#       hist[c] = count(c)
#     end
#   end
# end

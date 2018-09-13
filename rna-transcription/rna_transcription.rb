# l
class Complement
  def self.of_dna(strand)
    letters = strand.split('')
    complements = ''
    letters.each do |letter|
      if letter == 'G'
        complements << 'C'
      elsif letter == 'C'
        complements << 'G'
      elsif letter == 'T'
        complements << 'A'
      elsif letter == 'A'
        complements << 'U'
      else
        complements << ''
      end
    end
    complements
  end
end

# def test_rna_complement
#   assert_equal 'UGCACCAGAAUU', Complement.of_dna('ACGTGGTCTTAA')
# end

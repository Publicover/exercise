class Sieve

  def initialize(range)
    @range = range
  end

  def primes
    finished_array = []
    prime_array = (2..@range).to_a
    # prime_array << @range

    prime_array.each do |n|
      prime_array.delete_if {|x| n % x == 0}
      finished_array << n
    end

    finished_array
    if @range == 1
      finished_array
    end
  end

end

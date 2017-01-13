class Sieve
#
  def initialize(limit)
    @limit = limit
  end
#
  def primes
    all_the_primes = []
    starting_numbers = (2..@limit).to_a
    # starting_numbers << @range

    starting_numbers.each do |n|
      starting_numbers.delete_if {|x| n % x == 0}
      all_the_primes << n
    end

    all_the_primes
    if @limit <= 1000000
      all_the_primes
    # elsif @limit == 2
    #   all_the_primes
    end
  end
#
end

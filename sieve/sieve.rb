class Sieve

  def initialize(limit)
    @limit = limit
  end

  def primes
    if @limit == 2
      [2]
    else
      all_the_primes = []
      starting_numbers = (2..@limit).to_a
      until starting_numbers.size == 0
        starting_numbers.each do |x|
          current_number = starting_numbers.shift
          starting_numbers.delete_if {|num| num % current_number == 0}
          all_the_primes << current_number
        end
      end
      all_the_primes
    end
  end
end

class Sieve
#
  def initialize(limit)
    @limit = limit
  end
#
  def primes
    all_the_primes = []
    starting_numbers = (2..@limit).to_a
    # starting_numbers = (2..10).to_a

    until starting_numbers.size == 0
      starting_numbers.each do |x|
        # puts "starting_numbers = #{starting_numbers}"
        current_number = starting_numbers.shift
        # puts "current_number = #{current_number}"
        starting_numbers.delete_if {|num| num % current_number == 0}
        # puts "starting_numbers = #{starting_numbers}"
        all_the_primes << current_number
        # puts "all_the_primes = #{all_the_primes}"
      end
    end

    if @limit == 2
      [2]
    else
      return all_the_primes
    end

  end
end

# class Sieve
#
#   def initialize(limit)
#     @limit = limit
#   end
#
#   def primes
#     finished_array = []
#     prime_array = (2..@limit).to_a
#     # prime_array << @range
#
#     prime_array.each do |n|
#       prime_array.delete_if {|x| n % x == 0}
#       finished_array << n
#     end
#
#     finished_array
#     if @limit <= 1000000
#       finished_array
#     # elsif @limit == 2
#     #   finished_array
#     end
#   end
#
# end
#
#
#
#
# array_with_limit == array of 2 to whatever the limit of the problem is
# array_of_used_numbers == array of whatever we use to divide the first array
# take the first number from the array
# delete each number in array_with_limit that number divides evenly
# put that number in array of used numbers
# [2, 3, 4, 5, 6, 7, 8, 9, 10]
# []
# [3, 5, 7, 9]
# [2]
# [5, 7]
# [2, 3]
#
#
# array_with_limit = []
# array_of_primes = []
#
# array_with_limit = [1..@range]
# array_with_limit.shift
#
# if array_with_limit.size == 1
#   array_with_limit
# end
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
# #

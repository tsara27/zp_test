require './lib/fibonacci.rb'

puts 'Enter a number. You will get fibonacci sequence up to that number.'
number = gets.chomp

fibonacci = Fibonacci.new(number)
fibonacci.generate_sequence

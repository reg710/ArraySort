require './lib/array_sort'

puts "Please enter a list, separated by a space, of things you'd like to have sorted."
puts "For example '5 6 10 1' or 'cardamom cumin anise'"
input = gets.chomp
puts

user_array = input.split(" ")
sorter = Sorter.new

puts "Here's your sorted list: #{sorter.arrange(user_array).join(", ")}."

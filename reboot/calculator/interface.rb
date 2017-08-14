require_relative "calculator"

puts "Enter a first number:"
first_number = gets.chomp.to_i
while first_number
  puts "Enter a second number:"
  second_number = gets.chomp.to_i
  puts "Which operation [+][-][x][/]?"
  operator = gets.chomp.to_s
  print "Result: "
  puts calculate(first_number, second_number, operator)
  puts "Enter a first number:"
  first_number = gets.chomp.to_i
end


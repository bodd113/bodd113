require_relative "giftlist"
list_gifts = {}
puts "Welcome to your Christmas giftlist"
puts "Which action [list|add|delete|quit|mark|inspire]?"
action = gets.chomp.to_s
until action == "quit"
  puts gift_list(list_gifts, action)
  puts "Which action [list|add|delete|quit|mark|inspire]?"
  action = gets.chomp.to_s
end
puts "Goodbye"



require "open-uri"
require "nokogiri"

def gift_list(list_gifts, action)
  case action
  when "list"
  i = 0
  list_gifts.each do |key, value|
    i += 1
    puts "#{i} - #{value} #{key}"
  end
  when "add"
    puts "please enter an item to add"
    list_gifts[gets.chomp.to_s] = []
    puts "Your item has been added"
    puts list_gifts
  when "delete"
    puts "Please enter an item to delete"
    list_gifts.delete(gets.chomp.to_s)
    puts "Your item has been deleted"
  when "mark"
    puts "Please enter an item to mark as bought"
    list_gifts[gets.chomp.to_s] << "X"
    puts "Your item has been marked as bought"
  when "inspire"
    puts "What are you looking for?"
    search_item = gets.chomp.to_s
    file = open("https://www.etsy.com/uk/search?q=#{search_item}")
    doc = Nokogiri::HTML(file)
    j = 1
    etsy_items = {}
    # items =
    doc.search(".card").first(7).each do |card|
      title = card.seach(".card-meta-row").text.strip.split.first(5).join("")
      etsy_items[j] = title
      puts "#{j} - #{title}"
      j += 1
    end
    puts "Pick one to add to your list"
    item = etsy_items[gets.chomp.to_i]
    list_gifts[item] = []
  else
    puts "Please enter a valid command"
  end
end

puts gift_list(["a", "b"], "inspire")

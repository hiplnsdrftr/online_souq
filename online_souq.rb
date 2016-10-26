souq_cart = ["old paperback book", "potato", "red onion", "dried lemon",
  "frankincense", "medicinal herbs", "saffron", "glass spice jar", "red fabric",
  "orange fabric", "handicrafts", "small persian rug", "large persian rug",
  "extra large persian rug"]

# greet the shopper, take their name, store as 'name'

puts "Welcome to our brand new online souq, could I have your name please?"
name = gets.chomp

puts "\nHello #{name}, here are the items we have available in our online souq:\n "
souq_cart.each do |item|
  puts " #{item}"
end

input = ""
shopping_cart = []
unavailable_items = []

# ask user what they want to add to their cart, if user asks for
# something not on available item list notify them
# give user option to type 'finished' to stop adding items

while true
  puts "\nWhat item would you like to buy? (type 'finished' when done)"
  input = gets.chomp.downcase

  if input == "finished"
    break
  elsif souq_cart.include?(input)
    shopping_cart << input
  else
    puts "\nThat item is not available. "
    unavailable_items << input
  end
end

# print contents of cart in assigned format

puts "\n#{name}, thanks for trying our online souq platform. Here is a list of the items
in your cart: "
shopping_cart.each do |item|
  print " * "
  puts item
end

puts "\nBTW, we noticed you tried entering in some items that are not part of
the online souq. We do not have the following items yet, but will let you
know if they show up: "
unavailable_items.each do |item|
  print " * "
  puts item
end

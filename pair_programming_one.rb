# puts "Please enter your 5 favorite foods"
# food = []
# x = 0
# while x < 5
#   temp = gets.chomp
#   food.push(temp)
#   x += 1
# end
# x = 0
# while x < 5
#   puts "I love " + food[x]
#   x += 1
# end
# Finally, change your program so that when the list is printed in the terminal, each food is prefaced with a number, beginning with 1 and going up to 5, for example
puts "Please enter your 5 favorite foods"
food = []
x = 0
while x < 5
  temp = gets.chomp
  food.push(temp)
  x += 1
end
x = 0
while x < 5
  puts (x+1).to_s + ".  I love " + food[x]
  x += 1
end
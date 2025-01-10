require "http"
puts "put a number betweeon 1 and 10 for how many decks you want"
deck_count = gets.chomp.to_i
while deck_count > 10 || deck_count < 1
  puts "I'm sorry, that's not a number between 1 and 10"
  deck_count = gets.chomp.to_i
end
response1 = HTTP.get"https://deckofcardsapi.com/api/deck/new/shuffle/?deck_count=#{deck_count}"
deck1 = response1.parse
pp deck1
deck_id = deck1["deck_id"]
response2 = HTTP.get"https://deckofcardsapi.com/api/deck/#{deck_id}/shuffle/"
deck1shuffled = response2.parse
pp deck1
pp deck1shuffled
# response1 = HTTP.get"https://deckofcardsapi.com/api/deck/#{deck_id}/pile/pileone/list/"
# deck2 = response1.parse
# pp pileone
# # pp deck_id
# pp deck1
# pp deck2
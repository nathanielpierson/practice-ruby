# C. Use hashes with symbols to represent the following scenario:
# C.1 - You are the owner of a store that sells items (you decide what specifically). Each item has various properties such as color, price, etc.
# C.2 - Represent 3 items using hashes. Each hash should have the same keys with different values.
# C.3 - Be sure to use symbols for the keys. Try creating hashes using both types of hash symbol syntaxes. (Ruby syntax {:a => 123} vs. “JavaScript” syntax {a: 123}).

banana = {color: "yellow", price: "1.99", location_of_origin: "Venezuela", best_fruit: false}
raspberry = {color: "pink", price: "4.99", location_of_origin: "My fridge", best_fruit: true}
orange = {"color" => "orange, duh", price => "2.54", location_of_orangin: "Africa", best_fruit: false}
puts banana[:best_fruit]
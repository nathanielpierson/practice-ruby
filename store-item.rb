class Fruits
  def initialize (traits)
    @color = traits[:color]
    @price = traits[:price]
    @location = traits[:location]
    @best_fruit = traits[:best_fruit]
  end
  attr_reader :color, :price, :location, :bestfruit
end

banana = Fruits.new({color: "yellow", price: 1.99, location: "Venezuela", best_fruit: false})
dragonfruit = Fruits.new({color: "magenta", price: 3.69, location: "Dragon Roost Island", best_fruit: false})
raspberry = Fruits.new({color: "pink", price: 0.41, location: "America", best_fruit: true})
pp "Bananas are #{banana.color}, dragonfruit cost #{dragonfruit.price}, and raspberries are from #{raspberry.location}."
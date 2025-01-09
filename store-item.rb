class Fruit
  def initialize (traits)
    @color = traits[:color]
    @price = traits[:price]
    @location = traits[:location]
    @best_fruit = traits[:best_fruit]
  end
  attr_reader :color, :price, :location, :best_fruit
  attr_writer :color, :price, :location, :best_fruit
  def best
    if @best_fruit == true
      puts "this is the best fruit"
    else
      puts "it's trash"
    end
  end
end

banana = Fruit.new({color: "yellow", price: 1.99, location: "Venezuela", best_fruit: false})
dragonfruit = Fruit.new({color: "magenta", price: 3.69, location: "Dragon Roost Island", best_fruit: false})
raspberry = Fruit.new({color: "pink", price: 0.41, location: "America", best_fruit: true})
pp "Bananas are #{banana.color}, dragonfruit cost #{dragonfruit.price}, and raspberries are from #{raspberry.location}."
raspberry.location = "Greenland"
pp "Bananas are #{banana.color}, dragonfruit cost #{dragonfruit.price}, and raspberries are from #{raspberry.location}."
dragonfruit.best
dragonfruit.best_fruit = true
dragonfruit.best
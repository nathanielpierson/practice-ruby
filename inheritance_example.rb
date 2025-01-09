# Use inheritance to DRY up the classes. Note - a car is NOT in a type of bicycle, and a bicycle is NOT a type of car!
# To test it, create a bicycle and car instance from your newly modified classes (you can create them at the bottom of your file). First, have them accelerate. Then, make sure a bike can “Ring ring!” and a car "Beeeeeeep!"


class Vehicle
  def initialize
    @speed = 0
    @direction = 'north'
  end
  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
  attr_reader :speed, :direction
end

class Car < Vehicle
  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bicycle < Vehicle
  def ring_bell
    puts "Ring ring!"
  end
end

honda = Car.new
while honda.speed < 100
  honda.accelerate
  pp honda.speed
end
honda.honk_horn
cannondale = Bicycle.new
cannondale.accelerate
cannondale.ring_bell
pp cannondale.speed
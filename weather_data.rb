require "http"

response = HTTP.get"https://api.openweathermap.org/data/2.5/weather?lat=38.0293&lon=-78.4767&appid=bc225df82130e689a3a4f0fc8019f99a"

weather = response.parse
# pp weather
sky = weather["weather"][0]["description"]
wind_speed = weather["wind"]["speed"]
name = weather["name"]
puts "Do you want your temperature displayed in F or C?"
temp_conv = gets.chomp.downcase
if temp_conv == "f" || temp_conv == "fahrenheit"
  puts "bazinga"
elsif temp_conv == "c" || temp_conv == "celcius"
  puts "bazinga but in celcius"
end
puts "#{name} weather"
puts "open your eyes, look up to the skies and see: #{sky} going at #{wind_speed} mph"
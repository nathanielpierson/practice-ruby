require 'http'
response = HTTP.get"https://api.isevenapi.xyz/api/"
test = response.parse
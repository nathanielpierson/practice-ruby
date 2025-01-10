require 'http'

response = HTTP.get("https://gisweb.charlottesville.org/cvgisweb/rest/services/OpenData_1/MapServer/86/query?outFields=*&where=1%3D1&f=geojson")
storms = response.parse(:json)
puts storms[0]
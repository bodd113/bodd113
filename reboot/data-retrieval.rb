
require 'json'
require 'open-uri'

# def apod
url = "https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY"
apod_details = open(url).read
ap = JSON.parse(apod_details)

puts ap['url']
# end

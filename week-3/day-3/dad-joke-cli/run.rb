require 'http'
require 'json'

API_URL = "https://icanhazdadjoke.com/"
HEADER_JSON = "application/json"

def get_joke
  response = HTTP.headers(:accept => HEADER_JSON).get(API_URL)
  response.parse["joke"]
end

puts get_joke
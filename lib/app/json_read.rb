require 'json'


json = File.read('../../db/aveyron.json')
obj = JSON.parse(json)

p obj[0]["name"]

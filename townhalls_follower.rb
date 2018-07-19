require_relative 'townhalls_adder_to_db.rb'
require "dotenv"
require "pry"
require "twitter"
require 'json'
Dotenv.load

# quelques lignes qui enregistrent les clés d'APIs
class Bottwitter
  # récuper les clés du .env et connect à l'API
  def bot_follow
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV["TWITTER_API_KEY"]
      config.consumer_secret     = ENV["TWITTER_API_KEY_SECRET"]
      config.access_token        = ENV["TWITTER_API_TOKEN"]
      config.access_token_secret = ENV["TWITTER_API_TOKEN_SECRET"]
    end
    @handle = []
    #parcours le tableau des villes et fait une recherche twitter sur la premiere occurence de cette recherche puis follow l'utilisateur.
    @cities.each do |city|
      begin
      city = "ville de " + city
      puts city
      @search = @client.user_search(city)
      puts "#{@client.follow(@search.first[:screen_name])}"
      @handle << "@" + @search.first[:screen_name]
      rescue
      end
    end
    @total = @h.zip(@handle)
    puts @total
    adder = To_JSON.new
    adder.write_JSON("./../db/final.json", @total)
  end
  # lecture des différents JSON et stockage des données voulues dans des tableaux
  def json_read
    json = File.read('../../db/aveyron.json')
    json2 = File.read('../../db/herault.json')
    json3 = File.read('../../db/gard.json')
    obj = JSON.parse(json) + JSON.parse(json2) + JSON.parse(json3)
    @cities = []
    @h = []
    obj.each do |h|
      @cities << h["name"]
      @h << h
    end
  end
end

require "dotenv"
require "pry"
require "twitter"
require 'json'
Dotenv.load

# quelques lignes qui enregistrent les clés d'APIs


class Bottwitter

  def initialze

  end

  def bot_follow
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV["TWITTER_API_KEY"]
      config.consumer_secret     = ENV["TWITTER_API_KEY_SECRET"]
      config.access_token        = ENV["TWITTER_API_TOKEN"]
      config.access_token_secret = ENV["TWITTER_API_TOKEN_SECRET"]
    end
    @handle = []
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
  end

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

bot = Bottwitter.new
bot.json_read
bot.bot_follow
# input all the names here or grab them from your database or somewhere else.
names = ['ville de MONTPELLIER', 'ville de MARSEILLE', 'ville de PARIS', 'ville de LYON']

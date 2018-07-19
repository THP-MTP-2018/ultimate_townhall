require "dotenv"
require "pry"
require "twitter"

Dotenv.load

class follower
  def inizialize
   #commentaire 
  end
end

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV["TWITTER_API_KEY"]
  config.consumer_secret     = ENV["TWITTER_API_KEY_SECRET"]
  config.access_token        = ENV["TWITTER_API_TOKEN"]
  config.access_token_secret = ENV["TWITTER_API_TOKEN_SECRET"]
end

search.each do |handle|
  client.follow(handle)
end

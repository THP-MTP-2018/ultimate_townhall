require 'json'
require_relative "townhalls_scrapper.rb"

# definie la classe qui traite les JSON et lance les Scrappe
class To_JSON
  attr_accessor :hash_mail
  def initialize
    @hash_mail = []
  end
  # instancie scrapper et appel la methode get_all_the_urls_of_townhalls et stock les données dans un hash
  def get_mail(url, url2, dep)
    @scrapper = Scrapper.new
    @scrapper.get_all_the_urls_of_townhalls(url, url2, dep)
    @hash_mail = @scrapper.townhal_mail_hash
  end
 # méthode qui stocke les données dans un fichier JSON
  def write_JSON(json, hash_mail)
    File.open(json, "w") do |f|
        f.write(JSON.pretty_generate(hash_mail))
    end
  end
end

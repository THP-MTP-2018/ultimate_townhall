require 'gmail'
require 'gmail_xoauth'
require 'mail'
require 'json'

#connexion
class Mailer

  attr_accessor :mail, :commune, :tableau

  def initialize
    @gmail = Gmail.connect("lescorsairesdemontpellier@gmail.com", "thpmtp2018")
    @mail = []
    @commune = []
  end

  def reader_json
    json = File.read('../../db/aveyron.json')
    json2 = File.read('../../db/gard.json')
    json3 = File.read('../../db/herault.json')
    obj = JSON.parse(json) + JSON.parse(json2) + JSON.parse(json3)
    obj.each do |h|
      @mail << h['email']
      @commune << h['name']
    end
    @tableau = @mail.zip(@commune)
  end

  def send_email(m,name)
    @gmail.deliver do
      to m
      subject "École The Hacking Project "
      body "Bonjour,

    Je m'appelle Charlito, je suis élève à The Hacking Project, une formation au code gratuite, sans locaux, sans sélection, sans restriction géographique. La pédagogie de ntore école est celle du peer-learning, où nous travaillons par petits groupes sur des projets concrets qui font apprendre le code. Le projet du jour est d'envoyer (avec du codage) des emails aux mairies pour qu'ils nous aident à faire de The Hacking Project un nouveau format d'éducation pour tous.

    Déjà 500 personnes sont passées par The Hacking Project. Est-ce que la mairie de #{name} veut changer le monde avec nous ?


    Charles, co-fondateur de The Hacking Project pourra répondre à toutes vos questions : 06.95.46.60.80 "
      end
    @gmail.logout
  end
end

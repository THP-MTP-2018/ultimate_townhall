require 'gmail'
require 'gmail_xoauth'
require 'mail'


gmail = Gmail.connect("lescorsairesdemontpellier@gmail.com", "thpmtp2018")

gmail.deliver do
  to "nguyen.jean@me.com"
  subject "École The Hacking Project "
  body "Bonjour,

Je m'appelle Charlito, je suis élève à The Hacking Project, une formation au code gratuite, sans locaux, sans sélection, sans restriction géographique. La pédagogie de ntore école est celle du peer-learning, où nous travaillons par petits groupes sur des projets concrets qui font apprendre le code. Le projet du jour est d'envoyer (avec du codage) des emails aux mairies pour qu'ils nous aident à faire de The Hacking Project un nouveau format d'éducation pour tous.

Déjà 500 personnes sont passées par The Hacking Project. Est-ce que la mairie de [NOM_COMMUNE] veut changer le monde avec nous ?


Charles, co-fondateur de The Hacking Project pourra répondre à toutes vos questions : 06.95.46.60.80 "
  end
gmail.logout

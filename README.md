Projet validant du 19 juillet 2019

L'équipe qui a participé au projet:
@Rado @Jean @Anouar @Mathieu Chevet @skinito

Le programme va permettre de récuperer les emails de différentes mairie de france dans un fichier JSON et d'envoyer un texte de présentation de l'école the hacking project a ces mêmes emails automatiquement. De plus, un bot twitter follow les @ des mairies concernées.

Comment lancer le programme:
    -Installer les gems
    -Lancer le 'bundle install'
    -Lancer 'app.rb' dans le terminal

l'arborescence du dossier:

ultimate_townhall

db (base de donné)
    aude.json
    aveyron.json
    gard.json
    herault.json
    townhalls.json
lib (dossier comprenant les librairies du programme)
    app (différents partie du programme)
        json_read.rb (permet de lire les fichier JSON)
        townhalls_adder_to_db.rb (permet de créer les fichier JSON)
        townhalls_follower.rb (bot twitter pour follow les mairies)
        townhalls_mailer.rb (permet d'envoyer un email a toutes les mairies)
        townhalls_scrapper.rb (permet de recuperer des données des mairies)
    views (interface)
        done.rb
        index.rb

.gitignore
gemfile
gemfile.lock
README.md
app.rb (lance les différents programme)

GEM utilisées:

dotenv
nokogiri
google_drive
gmail
twitter
rubocop
pry

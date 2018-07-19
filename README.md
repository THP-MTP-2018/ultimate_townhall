<h1>Projet validant du 19 juillet 2019</h1>

L'équipe qui a participé au projet:
@Rado @Jean @Anouar @Mathieu Chevet @skinito

Le programme va permettre de récuperer les emails de différentes mairies de France dans un fichier JSON et envoyer un texte de présentation de l'école The hacking project a ces mêmes emails automatiquement. De plus, un bot twitter follow les @ des mairies concernées.

<h1>Comment lancer le programme:</h1>
    -Installer les gems
    <br>
    -Lancer le bundle install
    <br>
    -Lancer 'app.rb' dans le terminal

<h1>l'arborescence du dossier:</h1>

<h3>ultimate_townhall</h3>

<h4>db(base de donnée)</h4>
    - final.json
    <br>
    - aveyron.json
    <br>
    - gard.json
    <br>
    - herault.json
    <br>
    - townhalls.json
    <br>
    <br>
<h4>lib(dossier comprenant les librairies du programme)</h4>
   <h5>app(différents parties du programme)</h5>
        - json_read.rb (permet de lire les fichier JSON)
        <br>
        - townhalls_adder_to_db.rb (permet de créer les fichier JSON)
        <br>
        - townhalls_follower.rb (bot twitter pour follow les mairies)
        <br>
        - townhalls_mailer.rb (permet d'envoyer un email a toutes les mairies)
        <br>
        - townhalls_scrapper.rb (permet de recuperer des données des mairies)
        <br>
        - .env (clé pour lancer le bot twitter)
        <br>
        <br>
    <h5>views(interfaces)</h5>
        - done.rb
        <br>
        - index.rb

<br>
<br>
.gitignore
<br>
gemfile
<br>
gemfile.lock
<br>
README.md
<br>
app.rb (lance les différents programme)

<h2>GEM utilisées:</h2>

- `dotenv` secure login
- `nokogiri` scrapper gem
- `gmail` gmail API access
- `twitter` twitter API access
- `rubocop` synthax check
- `pry` testing gem







<h2>ce qui a été fait :</h2>



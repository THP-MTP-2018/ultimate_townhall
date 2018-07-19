<h1>Projet validant du 19 juillet 2019</h1>

L'équipe qui a participé au projet:
@Rado @Jean @Anouar @Mathieu Chevet @skinito

Le programme va permettre de récuperer les emails de différentes mairie de france dans un fichier JSON et d'envoyer un texte de présentation de l'école the hacking project a ces mêmes emails automatiquement. De plus, un bot twitter follow les @ des mairies concernées.

<h1>Comment lancer le programme:</h1>
    -Installer les gems
    <br>
    -Lancer le bundle install
    <br>
    -Lancer 'app.rb' dans le terminal

<h1>l'arborescence du dossier:</h1>

<h3>ultimate_townhall</h3>

<h4>db</h4> (base de donné)
    <br>
    - aude.json
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
<h4>lib</h4> (dossier comprenant les librairies du programme)
    <br>
   <h5>app</h5> (différents partie du programme)
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
        <br>
    <h5>views</h5> (interface)
        <br>
        - done.rb
        <br>
        - index.rb


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

- dotenv
<br>
- nokogiri
<br>
- google_drive
<br>
- gmail
<br>
- twitter
<br>
- rubocop
<br>
- pry

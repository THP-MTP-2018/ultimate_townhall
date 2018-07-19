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
```sh
.ultimate_townhall
├── .gitignore
├── Gemfile
├── gemfile.lock
├── README.md
├── app.rb (lance les différents programme)
├── db
│   ├── aveyron.json
│   ├── gard.json
│   ├── herault.json
│   └── final.json
└── lib(dossier comprenant les librairies du programme)
    ├── app(différents parties du programme)
    │   ├── townhalls_adder_to_db.rb (permet de créer les fichier JSON)
    │   ├── townhalls_follower.rb (bot twitter pour follow les mairies)
    │   ├── townhalls_mailer.rb (permet d'envoyer un email a toutes les mairies)
    │   ├── townhalls_scrapper.rb (permet de recuperer des données des mairies)
    │   └──  env (clé pour lancer le bot twitter)
    └── views (interfaces)
        ├── done.rb
        └── index.rb
 
<h2>GEM utilisées:</h2>

- `dotenv` secure login
- `nokogiri` scrapper gem
- `gmail` gmail API access
- `twitter` twitter API access
- `rubocop` synthax check
- `pry` testing gem


## Travail realisé

Nous avons tout d’abord scrappé 3 départements: l’hérault, le Gard et l’aveyron. 
Ensuite nous avons envoyer un email à chacune des mairies puis nous avons lancer un bot twitter pour les follow. 
Et enfin nous avons mise en place une interface utilisateur pour lancer les différents programmes.




# Projet validant du 19 juillet 2019

## Introduction 

L'équipe qui a participé au projet:
@Rado @Jean @Anouar @Mathieu Chevet @skinito

Le programme va permettre de récuperer les emails de différentes mairies de France dans un fichier JSON et envoyer un texte de présentation de l'école The hacking project a ces mêmes emails automatiquement. De plus, un bot twitter follow les @ des mairies concernées.

## Lancer le programme  

Installer les gems
```sh
bundle install
```
Commande pour lancer le script dans le terminal
```sh
ruby app.rb
```

## Arborescence du dossier :

```
.ultimate_townhall
├── .gitignore
├── Gemfile
├── gemfile.lock
├── README.md
├── app.rb   // lance les différents programmes
├── db
│   ├── aveyron.json
│   ├── gard.json
│   ├── herault.json
│   └── final.json
└── lib     // dossier comprenant les librairies du programme
    ├── app       // différents parties du programme
    │   ├── townhalls_adder_to_db.rb      // permet de créer les fichier JSON
    │   ├── townhalls_follower.rb         // bot twitter pour follow les mairies)
    │   ├── townhalls_mailer.rb           // permet d'envoyer un email a toutes les mairies
    │   ├── townhalls_scrapper.rb         // permet de recuperer des données des mairies
    │   └── .env                          // clé pour lancer le bot twitter
    └── views (
        ├── done.rb
        └── index.rb
```

## GEM utilisées :

- `dotenv` secure login
- `nokogiri` scrapper gem
- `gmail` gmail API access
- `twitter` twitter API access
- `rubocop` synthax check
- `pry` testing gem

## Travail realisé :

Nous avons tout d’abord scrappé 3 départements: l’Hérault, le Gard et l’Aveyron. 
Ensuite nous avons envoyer un email à chacune des mairies puis nous avons lancer un bot twitter pour les follow. 
Et enfin nous avons mis en place une interface utilisateur pour lancer les différents programmes.




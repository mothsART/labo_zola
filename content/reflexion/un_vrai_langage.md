+++
title = "C'est quoi un vrai langage informatique en 2024 ?"
date = 2024-01-10
weight = 0
template = "blog_page.html"
[taxonomies]
categories = ["science"]
+++

# Introduction

On est en 2024 : l'informatique et les choix technologiques n'ont jamais été aussi nombreux.
On est donc en mesure d'être exigeant.

Au cours de ma carrière pro, j'ai appris plusieurs langages et paradigmes et voici la liste des choses qui sont désormais des prérequis :

- Un typage, partout, le plus fort possible avec tous les avantages :
    - Sérialisation/Déserialisation à partir d'une structure de données.
    - Du pattern matching : de l'algorithmie la plus simple à  lire et à comprendre.
    - Un moteur d'inférence.

- battery include : j'exige d'avoir le maximum d'outillage sans devoir installer moultes composants car : 
    - Je désire faire des tests unitaires, des mocks et du coverage.
    - Je devrais être en mesure de créer des benchmarks.
    - Je dois être en capacité de documenter une API.
    - J'aime avoir un outil en cli adapté : création de projets, lancement des builds, exec etc.
    - Je ne peux me passer de messages d'erreurs et stacktrace explicite.
    - J'aime avoir des règles fortes d'indentation (pep8 pour Python, 'cargo fmt' pour Rust).
    - Je suis accro aux contrôles qualités (analyse statique de code) via `ruff` en Python, `cargo clippy`en Rust.
    - Je ne concois plus un monde sans gestionnaire de dépendances clé en main (pour l'instant, j'ai pas vu mieux que `cargo`).
    - Je m'attends à pouvoir consulter, consommer et alimenter un dépôt dédié aux dépendances. Crates.io pour Rust, Pypi pour Python.

- Des sources adapté à du versionning (git bien sur mais pas que). La création d'un projet devrait être minimaliste. (Le nombre de fichiers à la création de projet que propose C# et Java me semble à proscrire)

- De l'asynchronisme et du parralélisme si possible "natif". (async/await)

- De la performance :
    - langage compilé en code "machine". (pas de machine virtuelle et JIT)
    - pas de Garbage collector, si possible. (surprises sur les benchs et le temps réel)

- La capacité à faire du bas comme du haut niveau : parfois on a besoin d'abstration et parfois de précision.
Les 2 n'étant pas du tout incompatible au sein d'un même projet.

- L'utilisation de paradigmes éprouvés : interfaces, generator, itérateurs, closures, prog fonctionnel, visibilité et confidentialité, objets non nullable etc.

-Disposer de la généricité : 
    - possibilité de rendre un objet débuggable, clonable etc.
    - Utilisation de macros.

- Manipuler du texte facilitement, naturellement. (également dans la recherche sur des gros volume de données)
- Manipuler des données binaires facilement.
- Avoir un moteur de Regex à sa disposition. (même si je considère que les regex devraient être rares)
- Etre immutable par défaut. Je préfère la logique ou tout est constante par défaut et ou les variables mutables doivent être explicitement déclarés.
- Disposer d'une structuration propres des projets ainsi que d'avoir des espaces de nommages (namespaces) limpides.

# Un écosystème

- un IDE qui déchire !
C# et Visual Studio étant pour l'instant la pointe de ce qui se fait mais Rust avec Visual Studio Code tiens la draguée (grâce à rust-lang/rust-analyzer).
    - Mettre des points d'arrêts, parcourir en pas à pas, voir le contenu des variables intermédiaires.
    - Faire de la refacto.
    - Auto-complétion.
    - Détection d'erreurs.
- Faire des outils en CLI. `Click_` en Python et `Clap` en Rust.
- Faire du web :
    - Payload et Response typés.
    - Protocoles récents : http2, websockets.
    - gestion des erreurs HTTP.
    - gestion des sessions et cookies.
    - Routing simplifié
    - gestion des fichiers statiques
    - auto-reload pendant le dev
    - REST
    - gestion de cache
    - GraphQL
- De l'i18n : https://projectfluent.org/
- Faire du réseau : TCP/UDP en client/serveur.
- gérer des formats de fichiers courants : json, toml, xml, markdown.
- interfaçage avec des BDD SQL (https://github.com/launchbadge/sqlx) et NoSQL.
- du Fuzzing
- Un fiddle pour tester des trucs en rapide.
- API de gestion des fichiers propres.

# les plus

- Accéder à la mémoire de la pile mais aussi sur le tas. (stack et heap)
- Faire du webassembly
- protobuffer
- Faire du frontend
- Détecter le deadcode
- Eviter nativement si possible les soucis de mémoires (buffer overflow) et de concurrence (data race).
- Eviter un maximum de soucis de CWE à la compilation.
- Eviter les try/catch de l'enfer
- S'interfacer avec des projets en C. (Zig est très fort sur ce point)

- les projets pilotes. Ex: ripgrep, fish pour Rust. Request, Flask pour Python.

- libs :
    - De logs
    - dates et time
    - valeurs random
    - lancer des requètes : https://hurl.dev/player.html?id=hurl&speed=3
    - web scrapping
    - De template : Jinja pour Python, Tera ou Askama pour Rust.
    - De traitement de fichiers étendus : images, svg, pdf.
    - Distance de levenstein
    - faire de l'AST
    - parseur combinator (Nom en Rust) ou PEG (Pest en Rust)

- programmation logique.
- machine à états.

- interfaçage avec la domotique, robotique etc.

# Conclusion

Actuellement, j'ai jeté mon dévolu sur Rust car il rempli (et de loin) le plus de cases.
Mais je suis ouvert à toute nouvelle découverte.

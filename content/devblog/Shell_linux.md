+++
title = "Shell Linux"
author = "Jérémie Ferry"
date = 2023-11-18
weight = 0
template = "blog_page.html"
[taxonomies]
tags = ["linux", "shell"]
categories = ["linux"]
+++

## Intro

A la recherche du shell linux parfait, voici le résultat de ma pérégrination.

## Zsh + Oh-my-zsh

Parce que :

1. l'auto-complétion est dingue (comparé à Bash).
2. la config est juste mieux.
3. c'est plus véloce.
4. système d'alias : globaux + extension de fichiers.

## Fish

1. L'auto-complétion : même niveau que Zsh mais sans extension (Oh my Zsh)
2. Config encore plus simple que zsh

## Nushell

Parce que :

1. Mon coeur balance, c'est quand même le powershell de Linux
2. un shell orienté objet/tableau

## Starship

- La gestion de git
- La config : un fichier toml tellement propre
- La doc : https://starship.rs/config/
- L'info si on est sur nushell ou zsh
- Détection de la version des langages dans un projet (Python, Rust, C etc.)
- Détection de la version des sources d'un projet
- Gestion de la batterie
- Python : utilisation ou non de de **Venv**
- L'information sur le temps d'exec de la dernière commande
- La couleur si on a un stdout ou un stderr


A découvrir :

- gestion de docker

Manque :

- gestion de tmux

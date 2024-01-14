+++
title = "Langage C"
author = "Jérémie Ferry"
date = 2023-03-26
weight = 0
template = "blog_page.html"
[taxonomies]
tags = ["linux", "langage", "programmation"]
+++

## Introduction

Le langage C est omniprésent dans le monde informatique.
Or, ça faisait de longues années que je n'en faisait plus.
Il était temps de remedier à ce problème !

## Constat

Plus je re-découvre ce langage et plus j'essai d'en prendre la mesure.
Qu'est-ce qu'il fait qu'il est incontournable et pourquoi il est en perte de vitesse ?

1. Système de packaging et gestionnaire de dépendances archaïque :
Je me forme à Meson, ninja et je suis surpris que après autotools, on reste encore à un fonctionnement très `bricolage``.
Des fichiers de build de plusieurs centaines de lignes, des variables d'environnement à éditer et des chemins à bien renseigner pour permettre de cloisonner nos devs.

Quand je compare avec Rust et ces fichiers Toml, je me rend compte du fossé incroyable entre les 2.

2. Pas d'UTF-8 règlementé.

3. Le support du langage C est vraiment présent sur toutes les architectures !
Le manque de support de certaines archi en Rust pose des soucis pour des projets comme Gimp.

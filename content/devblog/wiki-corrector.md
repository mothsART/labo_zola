+++
title = "Wiki-corrector"
author = "Jérémie Ferry"
date = 2023-03-11
weight = 0
template = "blog_page.html"
[taxonomies]
tags = ["ubuntu", "wiki"]
categories = ["linux", "python"]
+++

## Intro

J'ai commencé ma découverte de Linux au travers Ubuntu.
Depuis, j'ai tendance à apporter ma pierre à l'édifice en éditant le wiki d'[Ubuntu-fr](https://doc.ubuntu-fr.org) au fil de mes envies, de mon temps et mes connaissances.

J'ai remarqué que certains défauts du wiki étaient réccurents et j'ai essayé de m'emparer du sujet.

## Comment ça fonctionne ?

C'est une collection de scripts python assez simples.

1. Un script de récupération des sources au format dokuwiki.

2. des algos de vérification qui remontent des anomalies.

3. des scripts d'auto-correction pour les cas les plus simple. Ex : remplacer une liste de lien en http par du https.

4. des scripts d'aide à la correction.

## Les vérifications

1. De l'orthographe, de la grammaire etc via Grammalect.

2. Sur les balises Dokuwiki. Si elles sont mal construitent, l'affichage peut être cassé.

3. Sur les liens : timeout, 404, http (au lieu de https) etc.

4. Sur la construction des instructions en shell

5. Sur le contenu : pas de mots grossiers, d'ordre sexuel etc. 

Plus le temps avance et plus les vérifications sont mis sous contrôle dans des tests unitaires avec la [CI de github](https://github.com/mothsART/wiki-corrector/actions) (github actions).

## Avancement

Ces travaux sont faits sur mon temps personnel et ne respectent pas un plan bien définit.
Elles sont itératives : 1 à 2 semaines ou je travaille à fond dessus pour faire avancer le sujet.

Le plus gros du travail n'est pas foncièrement technique : il suffit de relire bêtement les remontés et corriger au besoin.
Il y a encore beaucoup de faux-positifs mais l'écart se réduit au fil du temps.

Les nouvelles idées d'amélioration surgissent au fil des corrections et je suis bien évidement preneur de tout ce qui est possible.

# suivre l'avancement

Je communique sur l'avancement ici :

[ticket forum Ubuntu-fr](https://forum.ubuntu-fr.org/viewtopic.php?id=2067892)

et le source est là : [dépôt github](https://github.com/mothsART/wiki-corrector)

## Conclusion

Si vous avez lu jusqu'ici, c'est que vous appréciez la documentation d'Ubuntu-fr et que vous êtes sensible aux méthodologie d'amélioration.
Jusqu'à présent, pas d'IA sophistiqué. Néanmoins, l'outil a déjà rendu de nombreux services et devrait continué à en rendre.

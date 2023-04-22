+++
title = "Gimp"
author = "Jérémie Ferry"
date = 2023-03-25
weight = 0
template = "blog_page.html"
[taxonomies]
tags = ["gimp", "linux"]
categories = [""]
+++

## Introduction

Participer à Gimp, c'est presque un rêve gosse.
C'est un défi multiple : participer à un gros projet, en langage C, en affinant mon anglais.
Bref, c'est une nouvelle aventure !

## Compilation

Créer un fichier $GIMP_PREFIX/share/config.site avec :

Créer GIMP_PREFIX :

```sh
export GIMP_PREFIX="${HOME}/gimp_prefix"
```

```sh
# GIMP_PREFIX has to be exported for this file to work
arch=`gcc -print-multiarch`
export PATH="$GIMP_PREFIX/bin:$PATH"
export PKG_CONFIG_PATH="$GIMP_PREFIX/share/pkgconfig:$GIMP_PREFIX/lib/pkgconfig:$GIMP_PREFIX/lib/${arch}/pkgconfig:$PKG_CONFIG_PATH"
export LD_LIBRARY_PATH="$GIMP_PREFIX/lib/${arch}/:$GIMP_PREFIX/lib:$LD_LIBRARY_PATH"
export ACLOCAL_FLAGS="-I $GIMP_PREFIX/share/aclocal $ACLOCAL_FLAGS"
export XDG_DATA_DIRS="$GIMP_PREFIX/share/:$XDG_DATA_DIRS"
export GI_TYPELIB_PATH="$GIMP_PREFIX/lib/${arch}/girepository-1.0:$GI_TYPELIB_PATH"
```

Nécessite de relancer meson :

```sh
git clean -x -d -f
```

Avant de compiler (babl, gegl etc.) :

```sh
source $GIMP_PREFIX/share/config.site
```

## Tester

```sh
ninja -C _build test
```

## Debug

Compiler :

```sh
meson _build --reconfigure && ninja -C _build && ninja -C _build install
```

Lancer en mode debug :

```sh
GIMP_DEBUG=xcf gimp-2.99
```

## Coding style

https://developer.gimp.org/core/coding_style/

# Liens

https://developer.gimp.org/core/setup/build/
https://developer.gimp.org/core/debug/problems_and_solutions/
https://developer.gimp.org/core/debug/debugging-tips/

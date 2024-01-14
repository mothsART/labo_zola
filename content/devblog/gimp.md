+++
title = "Gimp"
author = "Jérémie Ferry"
date = 2023-03-25
weight = 0
template = "blog_page.html"
[taxonomies]
tags = ["gimp", "linux"]
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
 export PATH="${GIMP_PREFIX}/bin:$PATH"

 # Used to detect the build dependencies
 export PKG_CONFIG_PATH="${GIMP_PREFIX}/share/pkgconfig:${GIMP_PREFIX}/lib/pkgconfig${PKG_CONFIG_PATH:+:$PKG_CONFIG_PATH}"
 # Assuming a 64-bit build. Remove otherwise.
 export PKG_CONFIG_PATH="${GIMP_PREFIX}/lib64/pkgconfig:$PKG_CONFIG_PATH"

 # Used to find the glib-introspection dependencies
 export XDG_DATA_DIRS="${XDG_DATA_DIRS:+$XDG_DATA_DIRS:}${GIMP_PREFIX}/share:/usr/local/share:/usr/share"

 # Used to find the libraries at runtime
 export LD_LIBRARY_PATH="${GIMP_PREFIX}/lib:${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"

 # Used by Autotools to find its tools
 export ACLOCAL_FLAGS="-I $INSTALL_PREFIX/share/aclocal $ACLOCAL_FLAGS"

 # Used to find introspection files
 GI_TYPELIB_PATH="${GIMP_PREFIX}/lib/girepository-1.0:${GI_TYPELIB_PATH:+:$GI_TYPELIB_PATH}"

arch="$(dpkg-architecture -qDEB_HOST_MULTIARCH 2> /dev/null)"
export PKG_CONFIG_PATH="${GIMP_PREFIX}/lib/${arch}/pkgconfig:$PKG_CONFIG_PATH"
export LD_LIBRARY_PATH="${GIMP_PREFIX}/lib/${arch}:${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"
export GI_TYPELIB_PATH="${GIMP_PREFIX}/lib/${arch}/girepository-1.0:${GI_TYPELIB_PATH:+:$GI_TYPELIB_PATH}"

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


```sh
cd $GIMP_PREFIX/build/babl
meson _build \
     --prefix=${GIMP_PREFIX} \
     --buildtype=release \
     --reconfigure
     -Db_lto=true
cd _build
ninja
ninja install

# copied and pasted into a terminal
cd $GIMP_PREFIX/build/gegl
meson _build \
     --prefix=${GIMP_PREFIX} \
     --buildtype=release \
     --reconfigure
     -Db_lto=true
cd _build
ninja
ninja install

# copied and pasted into a terminal
cd $GIMP_PREFIX/build/gimp
meson _build \
 --prefix=${GIMP_PREFIX} \
 --buildtype=release \
 -Dpython=enabled
cd _build
ninja
ninja install
```

## Coding style

https://developer.gimp.org/core/coding_style/

# Liens

https://developer.gimp.org/core/setup/build/
https://developer.gimp.org/core/debug/problems_and_solutions/
https://developer.gimp.org/core/debug/debugging-tips/

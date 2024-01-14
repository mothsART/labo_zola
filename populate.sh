#!/bin/bash
zola build
cp -rf public/* preprod/
mkdir -p preprod/labo
cp -rf labo/* preprod/labo/

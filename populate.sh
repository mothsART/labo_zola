#!/bin/bash
zola build
mkdir -p preprod/labo
cp -rf public/* preprod/
cp -rf labo/* preprod/labo/

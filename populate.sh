#!/bin/bash
zola build
cp -rf public/* preprod/
mkdir preprod/labo
cp -rf labo/* preprod/labo/

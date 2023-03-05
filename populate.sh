#!/bin/bash
zola build
cp -rf public/* preprod/

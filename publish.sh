#!/bin/sh

rm -r docs/*
sed -r 's/(href|src)="/\1="\//' _build/html/404.html | sed -r 's/(href|src)="\/http/\1="http/' > _build/html/404.tmp
mv _build/html/404.tmp _build/html/404.html
cp -pr _build/html/* docs/
echo "supportastronomer.net\c" > docs/CNAME

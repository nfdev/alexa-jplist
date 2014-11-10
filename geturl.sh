#!/bin/bash

for (( i=0; i<25; i++ ))
do
    url="https://www.alexa.com/topsites/countries;"$i"/JP"
    wget -nv -O - $url 2>/dev/null | grep '^<a href="/siteinfo' | sed -e "s/^.*>\([^<>]\+\)<.*$/\1/"
done

#!/bin/sh

find /root/mirror -type f -iname "*.html" -exec urlextract -u -l 0 {} \; \
    | grep AML \
    | grep -v '?' \
    | sort \
    | uniq > /root/output/site-contents.html

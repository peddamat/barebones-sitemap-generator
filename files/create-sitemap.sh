#!/bin/sh

SITE='https://target-data.nci.nih.gov'

find /root/mirror -type f -iname "*.html" -exec urlextract -u -l 0 {} \; \
    | grep AML \
    | grep -v '?' \
    | sort \
    | uniq \
    | while read url; do echo "<a href='$url'>${url#$SITE}</a><br />"; done \
    | tee /root/output/site-contents.html

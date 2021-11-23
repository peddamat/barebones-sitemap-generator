#!/bin/sh

wget \
    --quiet \
    --show-progress \
    --mirror \
    --convert-links \
    --adjust-extension \
    --page-requisites \
    --no-parent \
    --reject-regex "(.*)\?(.*)" \
    -e robots=off \
    -A "*.html" \
    https://target-data.nci.nih.gov/Public/AML/

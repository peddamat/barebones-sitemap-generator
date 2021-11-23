#!/bin/sh

# Create a mirror of the site if we don't already have one
if [ ! -d '/root/mirror' ]; then
    echo "*** Couldn't find an existing mirror, creating one..."
    mkdir /root/mirror
    cd /root/mirror
    /root/mirror-site.sh
fi

echo "*** Creating sitemap"
/root/create-sitemap.sh

#!/bin/bash
#

### exclude admin-reports

index () {
    cd $1
    for f in `find * -type f | sort -r`; do
        #echo "http://door43.org/en/$2/${f%%.txt}"
        wget -q -U 'd43' -O /dev/null http://door43.org/en/$2/${f%%.txt}
    done
}

index /var/www/vhosts/door43.org/httpdocs/data/gitrepo/pages/en/obe obe
index /var/www/vhosts/door43.org/httpdocs/data/gitrepo/pages/en/ta ta
index /var/www/vhosts/door43.org/httpdocs/data/gitrepo/pages/en/bible bible

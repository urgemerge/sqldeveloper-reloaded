#!/bin/bash


#TZ="Europe/Amsterdam"

#echo $TZ > /etc/timezone
#cp /usr/share/zoneinfo/$TZ /etc/localtime

PATTERNS="jdk*
sqldeveloper*"

cd /opt

for pattern in $PATTERNS; do
        compfile=$(find /tmp -iname $pattern | sort | tail -1)
        if ( echo $compfile | grep -iq .tar.gz ) && ( ! ls -1  /opt | grep -iq $pattern ) ; then
                tar -zxvf $compfile 
        fi
        if ( echo $compfile | grep -iq zip ) && ( ! ls -1 /opt | grep -iq $pattern) ; then
                unzip $compfile
        fi
done

export JAVA_HOME="$(find /opt -maxdepth 1 -iname 'jdk*' | sort | tail -n1)/"

/opt/sqldeveloper/sqldeveloper.sh

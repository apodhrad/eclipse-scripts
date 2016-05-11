#!/bin/sh
ECLIPSE_HOME=/home/apodhrad/Projects/jbds-installer/eclipse-mars/target/eclipse

if [ ! -f $1 ]; then
    echo "File $1 not found!"
    exit 1
fi

echo "Executing $1"
java -jar `find $ECLIPSE_HOME/plugins/ -name org.eclipse.equinox.launcher_*.jar` \
   -noSplash \
   -application org.eclipse.ant.core.antRunner \
   -buildfile $1

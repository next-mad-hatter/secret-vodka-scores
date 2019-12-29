#!/bin/sh

DIR=`/usr/bin/dirname $0`
ROOT=$DIR/../
PUB=$ROOT/pub/

# risky ;)
exit(1)

cd $ROOT &&\
  /usr/bin/ncftp < $DIR/publish.ftp

# In case we want to publish the repo
#  &&\
#  cp -R .hg $PUB/trunk &&\
#  rm -rf $PUB/trunk

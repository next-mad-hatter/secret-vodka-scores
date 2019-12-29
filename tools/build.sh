#!/bin/sh

DIR=`/usr/bin/dirname $PWD/$0`

PUB=${DIR}/../pub/pdf
SRC=${DIR}/../src

mkdir -p $PUB || exit 1

cd $SRC &&\
  lilypond *.ly &&\
#  mv ${SRC}/*.pdf ${PUB}/ &&\
#  rename 's/\.pdf/ - MaX\.pdf/' ${PUB}/*.pdf


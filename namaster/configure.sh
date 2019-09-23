#!/bin/bash

./env_setup.sh

./configure \
  --prefix=/opt/ohpc/pub/apps/NaMaster-gnu8-mvapich2 \
  CC=`which mpicc` \
  CFLAGS="-Wall -Ofast -g" \
  CPPFLAGS="-I/opt/ohpc/pub/libs/gnu8/gsl/2.5/include -I/opt/ohpc/pub/libs/gnu8/mvapich2/fftw/3.3.8/include -I/usr/include/cfitsio/ -I/opt/ohpc/pub/apps/libsharp-gnu8-mvapich/include" \
  LDFLAGS="-L/opt/ohpc/pub/libs/gnu8/gsl/2.5/lib -L/opt/ohpc/pub/apps/libsharp-gnu8-mvapich/lib -L/usr/lib64 -L/opt/ohpc/pub/libs/gnu8/mvapich2/fftw/3.3.8/lib"

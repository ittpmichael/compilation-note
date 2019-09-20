#!/bin/bash

echo "Please download important module before running this script."

./configure --enable-mpi --enable-pic CC=`which mpicc`

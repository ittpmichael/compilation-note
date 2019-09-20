# Compiling libsharp with GCC compiler

## Prerequisite

* gcc compiler
* autoconf

## Compiling

1. `cd` to the source directory of libsharp
2. run `./autoconf` to create a `configure` file
3. `./configure --enable-mpi --enable-pic CC=`which mpicc``
4. `make`
5. `make test` and `make perftest`
6. if testing passes all conditions, then copy data in `auto/bin`, `auto/include` and `auto/lib` to the desire directory 

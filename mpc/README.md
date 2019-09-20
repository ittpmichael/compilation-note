# Compiling MVAPICH2-2.2 with Intel Compiler 2015

## Prerequisite

* gcc compiler
* gmp
* mpfr

## Compiling

1. `cd` to the source directory of gmp
2. `./configure --prefix=<desired_directory> --with-gmp=<gmp_install_dir> --with-mpfr=<mpfr_install_dir>`
3. `make`
4. `make check j<number_of_threads>`
5. if `make check` passes all conditions, then `sudo make install`


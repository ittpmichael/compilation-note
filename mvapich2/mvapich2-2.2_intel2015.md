# Compiling MVAPICH2-2.2 with Intel Compiler 2015

## Prerequisite

* Intel Compiler 2015
* automake version 1.15 or higher
* libtool version 2.4.3 or higher

## Env setting

* If you are using bash, `source <dir_to_intel>/composer_xe_2015.1.133/bin/compilervars.sh intel64`
* ensure environment variables `MKLROOT` exists
* set `CFLAGS="-I${MKLROOT}/include"`
* set `FFLAGS=$CFLAGS`
* set `FCFLAGS=$FCFLAGS`
* set `LDFLAGS=-L${MKLROOT}/lib/intel64 -lmkl_rt -lpthread -lm -ldl`

## Compiling

1. `cd` to the source directory of mvapich
2. `./autogen.sh`
3. `./configure --prefix=<desired_directory>`
4. `make -j<number_of_threads>`
5. `make check`
6. if `make check` passes all conditions, then `sudo make install`

## Possible problems

### `libtool` cannot find `ifort`, `icc` or `icpc` during make process

Open the `libtool` file, then look for **ifort**, **icc** or **icpc** and add full path for them. Close the file and run `make` again.
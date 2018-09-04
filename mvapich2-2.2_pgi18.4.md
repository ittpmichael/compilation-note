# Compiling MVAPICH2-2.2 with PGI compiler 18.4

## Prerequisite

* pgi compiler 18.4
* automake version 1.15 or higher
* libtool version 2.4.3 or higher

## Env setting

* unset `F90` and `F90FLAGS`
* set `CPP=cpp`
* set `FC=pgfortran`
* set `CUDA_HOME=/usr/local/cuda-9.1`
* set `DEFCUDAVERSION=9.1` or add flag `-ta=tesla:cuda9.1` to `pgcc` (see [this documentation](https://www.pgroup.com/resources/docs/18.4/x86/pgi-user-guide/index.htm))

```sh
pgcc -ta=tesla:cuda9.1
```

## Compiling

1. `cd` to the source directory of mvapich
2. `./autogen.sh`
3. `./configure --prefix=<desired_directory>`
4. `make -j<number_of_threads>`
5. `make check`
6. if `make check` passes all condition, `sudo make install`
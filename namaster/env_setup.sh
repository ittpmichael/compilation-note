#!/bin/bash

module swap openmpi3/3.1.3 mvapich2
module load fftw/3.3.8 gsl libsharp

export CRAYPE_LINK_TYPE=dynamic
export XTPE_LINK_TYPE=dynamic

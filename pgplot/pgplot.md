# Compiling PGPLOT with GNU compiler

## Prerequisite

* GNU compiler
* pgplot source files version 5.2.2
* psrchive source files

## Compiling

* `cd` to the source directory of pgplot
* `patch < <src>/psrchive/pacakages/makemake.sharedcpg.patch`
* (optional: compiling on 64-bit system) `sed -i -e 's/INTEGER PIXMAP/INTEGER*8 PIXMAP/g' drivers/{gi,pp,wd}driv.f`
* `cd sys_linux`
* `cp ./g77_gcc.conf psrchive.conf`
* `perl -pi -e "s/g77/g77/" psrchive.conf`
* `perl -pi -e 's/-u //' psrchive.conf`
* `perl -pi -e 's|-I/usr/X11R6/include||' psrchive.conf`
* `perl -pi -e 's|-L/usr/X11R6/lib||' psrchive.conf`
* `export PGPLOT_SRC=<src>/pgplot`
* `export PGPLOT_DIR=<prefix>/pgplot`
* `cd $PGPLOT_DIR`
* `cp $PGPLOT_SRC/driver.list .`
* `perl -pi -e 's/! PNDRIV/  PNDRIV/' drivers.list`
* `perl -pi -e 's/! PSDRIV/  PSDRIV/' drivers.list`
* `perl -pi -e 's/! XWDRIV/  XWDRIV/' drivers.list`
* `$PGPLOT_SRC/makemake $PGPLOT_SRC linux psrchive`
* `perl -pi -e 's/^pndriv\.o :/# /' makefile`
* `make`
* `make cpg`
* `make pgxwin_server`
* `make grfont.dat`

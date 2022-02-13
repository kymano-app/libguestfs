
git clone https://github.com/kymano-app/libguestfs.git libguestfs_new
cd libguestfs_new
curl -OL https://download.libguestfs.org/1.46-stable/libguestfs-1.46.2.tar.gz
tar -xzf libguestfs-1.46.2.tar.gz
cd libguestfs-1.46.2

patch ocaml/examples/Makefile.am ../libguestfs-patches-1.44.2-2/ocaml/examples/Makefile.am.patch
patch configure.ac ../libguestfs-patches-1.44.2-2/configure.ac.patch
patch generator/Makefile.am ../libguestfs-patches-1.44.2-2-win/generator/Makefile.am.patch
patch ocaml/Makefile.am ../libguestfs-patches-1.44.2-2-win/ocaml/Makefile.am.patch
patch test-data/Makefile.am ../libguestfs-patches-1.44.2-2-win/test-data/Makefile.am.patch
patch fuse/Makefile.am ../libguestfs-patches-1.44.2-2-win/fuse/Makefile.am.patch
patch test-tool/Makefile.am ../libguestfs-patches-1.44.2-2-win/test-tool/Makefile.am.patch
patch fish/Makefile.am ../libguestfs-patches-1.44.2-2-win/fish/Makefile.am.3.patch
patch ruby/Makefile.am ../libguestfs-patches-1.44.2-2-win/ruby/Makefile.am.patch
patch bash/Makefile.am ../libguestfs-patches-1.44.2-2-win/bash/Makefile.am.patch
patch golang/Makefile.am ../libguestfs-patches-1.44.2-2-win/golang/Makefile.am.patch
patch rescue/Makefile.am ../libguestfs-patches-1.44.2-2-win/rescue/Makefile.am.patch
patch python/Makefile.am ../libguestfs-patches-1.44.2-2-win/python/Makefile.am.patch
patch rust/Makefile.am ../libguestfs-patches-1.44.2-2-win/rust/Makefile.am.patch
patch java/Makefile.am ../libguestfs-patches-1.44.2-2-win/java/Makefile.am.patch
patch haskell/Makefile.am ../libguestfs-patches-1.44.2-2-win/haskell/Makefile.am.patch
patch lib/Makefile.am ../libguestfs-patches-1.44.2-2-win/lib/Makefile.am.3.patch
patch Makefile.am ../libguestfs-patches-1.44.2-2-win/Makefile.am.2.patch
patch erlang/Makefile.am ../libguestfs-patches-1.44.2-2-win/erlang/Makefile.am.patch
patch gobject/Makefile.am ../libguestfs-patches-1.44.2-2-win/gobject/Makefile.am.patch
patch php/Makefile.am ../libguestfs-patches-1.44.2-2-win/php/Makefile.am.patch
patch daemon/Makefile.am ../libguestfs-patches-1.44.2-2-win/daemon/Makefile.am.patch
patch lua/Makefile.am ../libguestfs-patches-1.44.2-2-win/lua/Makefile.am.patch
patch lib/guestfs-internal.h ../libguestfs-patches-1.44.2-2-win/lib/guestfs-internal.h.patch-0.1
patch examples/Makefile.am ../libguestfs-patches-1.44.2-2-win/examples/Makefile.am.patch
patch gnulib/lib/getprogname.h ../libguestfs-patches-1.46.2-win/gnulib/lib/getprogname.h.patch
patch docs/Makefile.am ../libguestfs-patches-1.46.2-win/docs/Makefile.am.patch
patch lib/launch-direct.c ../libguestfs-patches-1.46.2-win/lib/launch-direct.c.patch
patch fish/rc.c ../libguestfs-patches-1.46.2-win/fish/rc.c.patch
patch lib/launch-unix.c ../libguestfs-patches-1.46.2-win/lib/launch-unix.c.patch 

autoreconf -i

./configure --with-qemu="no" --enable-debug --disable-appliance --enable-vala=no --disable-rust --enable-introspection=no --disable-gobject --disable-golang --disable-lua --disable-php --disable-erlang --disable-haskell --disable-ruby --disable-python  --disable-perl --enable-ocaml --disable-libtool-lock --disable-dependency-tracking --disable-option-checking --disable-rust --with-distro=openbsd --disable-probes  --disable-daemon --disable-fuse LDFLAGS="-L/usr/local/lib -L/usr/lib" LIBS="-lintl -lpcre2-8 -ljansson -ltirpc"

make CFLAGS="-I/cygdrive/c/Program\ Files\ \(x86\)/Windows\ Kits/10/Include/10.0.22000.0/shared -I/usr/include/ -I/usr/lib/ocaml/" --trace

./run guestfish --help
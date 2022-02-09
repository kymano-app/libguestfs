
git clone https://github.com/kymano-app/libguestfs.git libguestfs_new
cd libguestfs_new
 curl -OL https://download.libguestfs.org/1.44-stable/libguestfs-1.44.2.tar.gz
tar -xzf libguestfs-1.44.2.tar.gz
cd libguestfs-1.44.2

patch align/Makefile.am ../libguestfs-patches-1.44.2-2/align/Makefile.am.patch
patch cat/Makefile.am ../libguestfs-patches-1.44.2-2/cat/Makefile.am.patch
#patch common/protocol/guestfs_protocol.c ../libguestfs-patches-1.44.2-2/common/protocol/guestfs_protocol.c.patch
patch df/Makefile.am ../libguestfs-patches-1.44.2-2/df/Makefile.am.patch
patch diff/Makefile.am ../libguestfs-patches-1.44.2-2/diff/Makefile.am.patch
patch docs/Makefile.am ../libguestfs-patches-1.44.2-2/docs/Makefile.am.patch
patch edit/Makefile.am ../libguestfs-patches-1.44.2-2/edit/Makefile.am.patch
patch format/Makefile.am ../libguestfs-patches-1.44.2-2/format/Makefile.am.patch
patch inspector/Makefile.am ../libguestfs-patches-1.44.2-2/inspector/Makefile.am.patch
#patch lib/inspect-apps.c ../libguestfs-patches-1.44.2-2/lib/inspect-apps.c.patch
patch m4/guestfs-progs.m4 ../libguestfs-patches-1.44.2-2/m4/guestfs-progs.m4.patch
patch make-fs/Makefile.am ../libguestfs-patches-1.44.2-2/make-fs/Makefile.am.patch
patch ocaml/examples/Makefile.am ../libguestfs-patches-1.44.2-2/ocaml/examples/Makefile.am.patch
#patch test-tool/test-tool.c ../libguestfs-patches-1.44.2-2/test-tool/test-tool.c.patch
patch configure.ac ../libguestfs-patches-1.44.2-2/configure.ac.patch
patch generator/pr.ml ../libguestfs-patches-1.44.2-2-win/generator/pr.ml.patch
patch generator/Makefile.am ../libguestfs-patches-1.44.2-2-win/generator/Makefile.am.patch
patch ocaml/Makefile.am ../libguestfs-patches-1.44.2-2-win/ocaml/Makefile.am.patch
patch test-data/Makefile.am ../libguestfs-patches-1.44.2-2-win/test-data/Makefile.am.patch
patch fuse/Makefile.am ../libguestfs-patches-1.44.2-2-win/fuse/Makefile.am.patch
patch test-tool/Makefile.am ../libguestfs-patches-1.44.2-2-win/test-tool/Makefile.am.patch
patch fish/Makefile.am ../libguestfs-patches-1.44.2-2-win/fish/Makefile.am.patch_2
patch ruby/Makefile.am ../libguestfs-patches-1.44.2-2-win/ruby/Makefile.am.patch
patch bash/Makefile.am ../libguestfs-patches-1.44.2-2-win/bash/Makefile.am.patch
patch golang/Makefile.am ../libguestfs-patches-1.44.2-2-win/golang/Makefile.am.patch
patch rescue/Makefile.am ../libguestfs-patches-1.44.2-2-win/rescue/Makefile.am.patch
patch python/Makefile.am ../libguestfs-patches-1.44.2-2-win/python/Makefile.am.patch
patch rust/Makefile.am ../libguestfs-patches-1.44.2-2-win/rust/Makefile.am.patch
patch java/Makefile.am ../libguestfs-patches-1.44.2-2-win/java/Makefile.am.patch
patch haskell/Makefile.am ../libguestfs-patches-1.44.2-2-win/haskell/Makefile.am.patch
patch lib/Makefile.am ../libguestfs-patches-1.44.2-2-win/lib/Makefile.am.patch-2
patch Makefile.am ../libguestfs-patches-1.44.2-2-win/Makefile.am.patch
patch erlang/Makefile.am ../libguestfs-patches-1.44.2-2-win/erlang/Makefile.am.patch
patch gobject/Makefile.am ../libguestfs-patches-1.44.2-2-win/gobject/Makefile.am.patch
patch php/Makefile.am ../libguestfs-patches-1.44.2-2-win/php/Makefile.am.patch
patch daemon/Makefile.am ../libguestfs-patches-1.44.2-2-win/daemon/Makefile.am.patch
patch lua/Makefile.am ../libguestfs-patches-1.44.2-2-win/lua/Makefile.am.patch
#patch lib/guestfs-internal.h ../libguestfs-patches-1.44.2-2-win/lib/guestfs-internal.h.patch-0.1
patch examples/Makefile.am ../libguestfs-patches-1.44.2-2-win/examples/Makefile.am.patch
#patch lib/match.c ../libguestfs-patches-1.44.2-2-win/lib/match.c.patch
#patch daemon/btrfs.c ../libguestfs-patches-1.44.2-2-win/daemon/btrfs.c.patch
#patch tests/c-api/tests-main.c ../libguestfs-patches-1.44.2-2-win/tests/c-api/tests-main.c.patch
#patch common/mlpcre/pcre-c.c ../libguestfs-patches-1.44.2-2-win/common/mlpcre/pcre-c.c.patch_3
#patch common/utils/pcre2-cleanups.c ../libguestfs-patches-1.44.2-2-win/common/utils/pcre2-cleanups.c.patch
#patch lib/guestfs-internal-all.h ../libguestfs-patches-1.44.2-2-win/lib/guestfs-internal-all.h.patch
#patch lib/version.c ../libguestfs-patches-1.44.2-2-win/lib/version.c.patch
#patch lib/info.c ../libguestfs-patches-1.44.2-2-win/lib/info.c.patch
#patch lib/qemu.c ../libguestfs-patches-1.44.2-2-win/lib/qemu.c.patch

autoreconf -i

./configure --with-qemu="no" --enable-debug --disable-appliance --enable-vala=no --disable-rust --enable-introspection=no --disable-gobject --disable-golang --disable-lua --disable-php --disable-erlang --disable-haskell --disable-ruby --disable-python  --disable-perl --enable-ocaml --disable-libtool-lock --disable-dependency-tracking --disable-option-checking --disable-rust --with-distro=openbsd --disable-probes  --disable-daemon --disable-fuse LDFLAGS="-L/usr/local/lib -L/usr/lib" LIBS="-lintl -lpcre2-8 -ljansson -ltirpc"

make CFLAGS="-I/usr/include/ -I/usr/lib/ocaml/" --trace

./run guestfish
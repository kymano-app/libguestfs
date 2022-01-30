curl -OL https://download.libguestfs.org/1.44-stable/libguestfs-1.44.2.tar.gz
tar -xzf libguestfs-1.44.2.tar.gz
cd libguestfs-1.44.2

patch align/Makefile.am < ../libguestfs-patches-1.44.2-2/align/Makefile.am.patch
patch cat/Makefile.am < ../libguestfs-patches-1.44.2-2/cat/Makefile.am.patch
patch common/mlpcre/pcre-c.c < ../libguestfs-patches-1.44.2-2/common/mlpcre/pcre-c.c.patch
patch common/protocol/guestfs_protocol.c < ../libguestfs-patches-1.44.2-2/common/protocol/guestfs_protocol.c.patch
patch df/Makefile.am < ../libguestfs-patches-1.44.2-2/df/Makefile.am.patch
patch diff/Makefile.am < ../libguestfs-patches-1.44.2-2/diff/Makefile.am.patch
patch docs/Makefile.am < ../libguestfs-patches-1.44.2-2/docs/Makefile.am.patch
patch edit/Makefile.am < ../libguestfs-patches-1.44.2-2/edit/Makefile.am.patch
patch examples/Makefile.am < ../libguestfs-patches-1.44.2-2/examples/Makefile.am.patch
patch fish/Makefile.am < ../libguestfs-patches-1.44.2-2/fish/Makefile.am.patch
patch format/Makefile.am < ../libguestfs-patches-1.44.2-2/format/Makefile.am.patch
patch gobject/Makefile.am < ../libguestfs-patches-1.44.2-2/gobject/Makefile.am.patch
patch inspector/Makefile.am < ../libguestfs-patches-1.44.2-2/inspector/Makefile.am.patch
patch lib/Makefile.am < ../libguestfs-patches-1.44.2-2/lib/Makefile.am.patch
patch lib/inspect-apps.c < ../libguestfs-patches-1.44.2-2/lib/inspect-apps.c.patch
patch m4/guestfs-progs.m4 < ../libguestfs-patches-1.44.2-2/m4/guestfs-progs.m4.patch
patch make-fs/Makefile.am < ../libguestfs-patches-1.44.2-2/make-fs/Makefile.am.patch
patch ocaml/examples/Makefile.am < ../libguestfs-patches-1.44.2-2/ocaml/examples/Makefile.am.patch
patch rescue/Makefile.am < ../libguestfs-patches-1.44.2-2/rescue/Makefile.am.patch
patch test-tool/Makefile.am < ../libguestfs-patches-1.44.2-2/test-tool/Makefile.am.patch
patch test-tool/test-tool.c < ../libguestfs-patches-1.44.2-2/test-tool/test-tool.c.patch
patch configure.ac < ../libguestfs-patches-1.44.2-2/configure.ac.patch
patch Makefile.am < ../libguestfs-patches-1.44.2-2/Makefile.am.patch

autoreconf -i
./configure --disable-appliance --enable-vala=no --disable-rust --enable-introspection=no --disable-gobject --disable-golang --disable-lua --disable-php --disable-erlang --disable-haskell --disable-ruby --disable-python  --disable-perl --disable-ocaml --disable-libtool-lock --disable-dependency-tracking --disable-option-checking --disable-rust --with-distro=openbsd --disable-probes  --disable-daemon --disable-fuse --prefix=/opt/local/ LDFLAGS="-L/opt/local/lib -L/usr/local/lib" LIBS="-lintl"

make CFLAGS="-I/System/Volumes/Data/opt/homebrew/Cellar/pcre2/10.39/include/ -I/System/Volumes/Data/opt/homebrew/Cellar/gettext/0.21/include -Wno-error=implicit-function-declaration"
echo ":::::::::::::::::::::::::::::::::"
ls -lt /usr/local/lib

sudo cp -r /System/Volumes/Data/opt/homebrew/Cellar/pcre2/10.39/lib/* /opt/local/lib/
sudo cp -r /System/Volumes/Data/opt/homebrew/Cellar/gettext/0.21/lib/* /opt/local/lib/

cd ../
curl -OL https://raw.githubusercontent.com/kymano-app/qemu/master/scripts/fix_mac.sh
bash fix_mac.sh
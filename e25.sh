wget http://ftpmirror.gnu.org/emacs/emacs-25.1.tar.xz
tar xf emacs-25.1.tar.xz
cd emacs-25.1
apt-get build-dep -y emacs24
apt-get install -y libwebkitgtk-3.0-dev
./configure --with-xwidgets --with-x-toolkit=gtk3 --with-modules
make -j5
make install

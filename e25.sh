# sudo apt-get purge emacs emacs23
sudo apt-get remove --auto-remove emacs23-lucid emacs23-nox
wget http://ftpmirror.gnu.org/emacs/emacs-25.1.tar.xz
tar xf emacs-25.1.tar.xz
cd emacs-25.1
sudo apt-get build-dep -y emacs24
sudo apt-get install -y libwebkitgtk-3.0-dev
./configure --with-xwidgets --with-x-toolkit=gtk3 --with-modules
make -j5
sudo make install

sudo apt-get install emacs texlive-latex-recommended texlive-latex-extra texlive-fonts-recommended
sudo apt-get install chktex

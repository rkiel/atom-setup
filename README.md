#### Download and Install Atom

[Atom Homepage](https://atom.io/)

#### Start Atom

*  This will verify the installation was successful.
*  It will also create the `~/.atom` directory with a clean setup of configuration files.
*  Quit out of Atom

#### Install the Shell Commands

For OS X

    cd /usr/local/bin
    sudo ln -nfs /Applications/Atom.app/Contents/Resources/app/apm/node_modules/.bin/apm apm
    sudo ln -nfs /Applications/Atom.app/Contents/Resources/app/atom.sh atom

For Linux

    cd /usr/local/bin
    TBD

#### Install Packages

    apm install vim-mode-plus
    apm install atom-beautify
    apm install markdown-preview-plus
    apm install pigments

#### Clone this repository

    mkdir -p ~/GitHub/rkiel
    cd ~/GitHub/rkiel
    git clone https://github.com/rkiel/atom-setup.git

#### Configuration

Create sym link for config.

    ln -nfs ~/GitHub/rkiel/atom-setup/config.cson ~/.atom/config.cson

Create sym link for snippets.

For Angular

    ln -nfs ~/GitHub/rkiel/atom-setup/angular.cson ~/.atom/snippets.cson

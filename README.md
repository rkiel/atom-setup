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

    apm install file-icons
    apm install linter

    apm install intentions
    apm install busy-signal
    apm install linter-ui-default

    apm install linter-eslint
    apm install markdown-preview-plus
    apm install pigments
    apm install platformio-ide-terminal
    apm install prettier-atom
    apm install vim-mode-plus

#### Clone this repository

    mkdir -p ~/GitHub/rkiel
    cd ~/GitHub/rkiel
    git clone https://github.com/rkiel/atom-setup.git

#### Configuration

Create sym link for config.

    ln -nfs ~/GitHub/rkiel/atom-setup/config.cson ~/.atom/config.cson

Create sym link for styles.

    ln -nfs ~/GitHub/rkiel/atom-setup/styles.less ~/.atom/styles.less

Create sym link for snippets.

    ln -nfs ~/GitHub/rkiel/atom-setup/snippets.cson ~/.atom/snippets.cson

For Angular

    ln -nfs ~/GitHub/rkiel/atom-setup/angular.cson ~/.atom/snippets.cson

For React

    ln -nfs ~/GitHub/rkiel/atom-setup/react.cson ~/.atom/snippets.cson

For Vue

    ln -nfs ~/GitHub/rkiel/atom-setup/vue.cson ~/.atom/snippets.cson

#### Upgrade Packages

    apm upgrade file-icons
    apm upgrade linter

    apm upgrade intentions
    apm upgrade busy-signal
    apm upgrade linter-ui-default

    apm upgrade linter-eslint
    apm upgrade markdown-preview-plus
    apm upgrade pigments
    apm upgrade platformio-ide-terminal
    apm upgrade prettier-atom
    apm upgrade vim-mode-plus


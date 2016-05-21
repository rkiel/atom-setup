#### Installation

Clone the repository

    mkdir -p ~/GitHub/rkiel
    cd ~/GitHub/rkiel
    git clone https://github.com/rkiel/atom-setup.git

#### Install Shell Commands

    cd /usr/local/bin
    sudo ln -nfs /Applications/Atom.app/Contents/Resources/app/apm/node_modules/.bin/apm apm
    sudo ln -nfs /Applications/Atom.app/Contents/Resources/app/atom.sh atom

#### Install Packages

    apm install atom-beautify
    apm install markdown-preview-plus
    apm install pigments
    apm install vim-mode-plus

#### Configuration

Create sym link for config.

    ln -nfs ~/GitHub/rkiel/atom-setup/config.cson ~/.atom/config.cson

Create sym link for snippets.

For Angular

    ln -nfs ~/GitHub/rkiel/atom-setup/angular.cson ~/.atom/snippets.cson

#### Settings

Core Settings

* add `, .vagrant, .keep, .gitkeep` to **Ignored Names**

Invisibles

* find **Preferred Line Length** and enter **120**
* check **Scroll Past End**

#### Packages

Install `vim-mode-plus`

Install `atom-beautify`

Install `markdown-preview-plus`.  (NOTE: open live preview with `ctrl-shift-m`)

* check **Use GitHub Style**

Install `pigments`

* find **Marker Type** and select **gutter**

Configure `tree-view`

* check **Hide Ignored Names**

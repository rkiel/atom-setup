#### Installation

Clone the repository

    mkdir -p ~/GitHub/rkiel
    cd ~/GitHub/rkiel
    git clone https://github.com/rkiel/atom-setup.git

#### Access via `bash`

Install Shell Commands

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

#### Snippets

Create sym link for snippets.

Angular

    ln -nfs ~/GitHub/rkiel/atom-setup/snippets.cson ~/.atom/angular.cson

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

#### Clone this repository

    mkdir -p ~/GitHub/rkiel && $_
    git clone https://github.com/rkiel/atom-setup.git

#### Install Packages

    cd ~/GitHub/rkiel/atom-setup
    ./bin/setup --install

#### Upgrade Packages

    cd ~/GitHub/rkiel/atom-setup
    ./bin/setup --update

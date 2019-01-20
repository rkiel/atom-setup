### Install Atom

* Browse to [Atom Homepage](https://atom.io/)
* Click **Download**
* Unpack download file
  * macOS
    * Go to **Downloads** and double click **atom-mac.zip** (Finder)
    * `cd ~/Downloads && unzip atom-mac.zip` (Terminal)
* Install Atom
  * macOS
    * Move **Atom** to **Applications** folder (Finder)
    * `mv ~/Downloads/Atom.app /Applications` (Terminal)
* Start Atom
  * macOS
    * Go to **Applications** and double click **Atom** (Finder)
    * `open -a Atom` (Terminal)
* Exit Atom
  * This will have created `~/.atom` (needed later)

### Install Command-Line Tools

#### macOS

Make the Atom command-line tools available to users by adding them to `/usr/local/bin`.

Make sure `/usr/local/bin` exists.

```bash
cd /usr/local
sudo mkdir -p bin
```

Install the Atom command-line application (`atom`)

```bash
cd /usr/local/bin
sudo ln -nfs /Applications/Atom.app/Contents/Resources/app/atom.sh atom
```

Install the Atom package manager (`apm`)

```bash
cd /usr/local/bin
sudo ln -nfs /Applications/Atom.app/Contents/Resources/app/apm/node_modules/.bin/apm apm
```

### Clone this repository

    mkdir -p ~/GitHub/rkiel && cd $_
    git clone https://github.com/rkiel/atom-setup.git

### Install Packages (first time only)

    cd ~/GitHub/rkiel/atom-setup
    ./install/bin/setup --install

### Upgrade Packages

    cd ~/GitHub/rkiel/atom-setup
    ./install/bin/setup --update

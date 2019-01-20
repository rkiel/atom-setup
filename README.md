#### Download and Install Atom

* Go to [Atom Homepage](https://atom.io/)
* Click **Download**
* Unpack download file
  * Go to **Downloads** and double click **atom-mac.zip** (macOS)
  * `cd ~/Downloads && unzip atom-mac.zip` (macOS)
* Install Atom
  * Move **Atom** to the **Applications** folder (macOS)
  * `mv ~/Downloads/Atom.app /Applications` (macOS)
* Start Atom
  * Go to **Applications** and double click **Atom** (macOS)
  * `open -a Atom` (macOS)
* Exit Atom
  * This will have created `~/.atom` (needed later)

#### Install Command-Line Tools (macOS)

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

#### Clone this repository

    mkdir -p ~/GitHub/rkiel && cd $_
    git clone https://github.com/rkiel/atom-setup.git

#### Install Packages (first time only)

    cd ~/GitHub/rkiel/atom-setup
    ./install/bin/setup --install

#### Upgrade Packages

    cd ~/GitHub/rkiel/atom-setup
    ./install/bin/setup --update

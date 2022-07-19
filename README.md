# hashicorp-terraform-practise
This folder will consists of all the practices related to Terraform
```
git clone https://github.com/SarwarSaif/hashicorp-terraform-practise.git
```
# Installation
For MacOS, got to the following link: https://www.terraform.io/downloads

```
brew install hashicorp/tap/terraform

Running `brew update --auto-update`...
==> Auto-updated Homebrew!
Updated 2 taps (derailed/k9s and homebrew/core).
==> New Formulae
adamstark-audiofile       datatype99                git-codereview            kt-connect                licensor                  metalang99                pipe-rename               redis@6.2                 unisonlang
astro                     docker-buildx             glib-utils                leapp-cli                 livekit                   mkp224o                   pixie                     req                       uthash
aztfy                     doggo                     gnustep-base              levant                    livekit-cli               mle                       pixiewps                  sgn                       vectorscan
bfgminer                  dooit                     gold                      lexicon                   llvm@13                   mprocs                    poac                      snowflake                 verapdf
cargo-bundle              dumpling                  helix                     lgeneral                  lunar-date                mypaint-brushes           podman-compose            swtpm                     webkitgtk
cargo-nextest             dunamai                   hwatch                    libnetfilter_conntrack    mabel                     nb                        protobuf@3                tea                       xdg-ninja
cargo-udeps               editorconfig-checker      ijq                       libnftnl                  manifest-tool             neovide                   python-build              tremor-runtime
circumflex                evernote-backup           interface99               libnl                     markdown-toc              nftables                  qbe                       trzsz-go
czg                       fastnetmon                iptables                  libobjc2                  mcap                      pax                       qsv                       ttdl
dart-sdk                  flock                     jaq                       libpython-tabulate        meek                      phrase-cli                railway                   tuc

You have 4 outdated formulae installed.
You can upgrade them with brew upgrade
or list them with brew outdated.

==> Tapping hashicorp/tap
Cloning into '/Users/sarwar.saif/homebrew/Library/Taps/hashicorp/homebrew-tap'...
remote: Enumerating objects: 2238, done.
remote: Counting objects: 100% (122/122), done.
remote: Compressing objects: 100% (55/55), done.
remote: Total 2238 (delta 84), reused 86 (delta 67), pack-reused 2116
Receiving objects: 100% (2238/2238), 390.99 KiB | 2.79 MiB/s, done.
Resolving deltas: 100% (1393/1393), done.
Tapped 1 cask and 18 formulae (51 files, 545.8KB).
==> Downloading https://releases.hashicorp.com/terraform/1.2.5/terraform_1.2.5_darwin_amd64.zip
######################################################################## 100.0%
==> Installing terraform from hashicorp/tap
Warning: A newer Command Line Tools release is available.
Update them from Software Update in System Preferences or run:
  softwareupdate --all --install --force

If that doesn't show you any updates, run:
  sudo rm -rf /Library/Developer/CommandLineTools
  sudo xcode-select --install

Alternatively, manually download them from:
  https://developer.apple.com/download/all/.
You should download the Command Line Tools for Xcode 13.2.1.

🍺  /Users/sarwar.saif/homebrew/Cellar/terraform/1.2.5: 3 files, 67.4MB, built in 7 seconds
==> `brew cleanup` has not been run in the last 30 days, running now...
Disable this behaviour by setting HOMEBREW_NO_INSTALL_CLEANUP.
Hide these hints with HOMEBREW_NO_ENV_HINTS (see `man brew`).
Removing: /Users/sarwar.saif/Library/Caches/Homebrew/helm--3.9.0... (14.2MB)
Removing: /Users/sarwar.saif/Library/Caches/Homebrew/k9s--0.25.18.tar.gz... (16.0MB)
Removing: /Users/sarwar.saif/Library/Caches/Homebrew/kubernetes-cli--1.24.1... (15.9MB)
Removing: /Users/sarwar.saif/Library/Caches/Homebrew/minikube--1.25.2... (30.2MB)
Removing: /Users/sarwar.saif/Library/Logs/Homebrew/minikube... (64B)
Removing: /Users/sarwar.saif/Library/Logs/Homebrew/k9s... (112B)
Removing: /Users/sarwar.saif/Library/Logs/Homebrew/kubernetes-cli... (64B)
Removing: /Users/sarwar.saif/Library/Logs/Homebrew/helm... (64B)
```
Check the version
```
sarwar.saif$ terraform --version
Terraform v1.2.5
on darwin_amd64
```

### For Linux
https://learn.hashicorp.com/tutorials/terraform/install-cli
```
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common
wget -O- https://apt.releases.hashicorp.com/gpg | \
    gpg --dearmor | \
    sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
gpg --no-default-keyring \
    --keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
    --fingerprint

```
```
my_vm_instance@instance-1:~/terraform$ sudo apt-get install terraform
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done

No apt package "terraform", but there is a snap with that name.
Try "snap install terraform"
```
There is no package with apt-get for Terraform.
https://askubuntu.com/questions/983351/how-to-install-terraform-in-ubuntu

```
Steps to install terraform on Ubuntu / Ubuntu cloud server :

Install unzip

sudo apt-get install unzip
Confirm the latest version number on the terraform website:

https://www.terraform.io/downloads.html
Download latest version of the terraform (substituting newer version number if needed)

wget https://releases.hashicorp.com/terraform/1.0.7/terraform_1.0.7_linux_amd64.zip
Extract the downloaded file archive

unzip terraform_1.0.7_linux_amd64.zip
Move the executable into a directory searched for executables

sudo mv terraform /usr/local/bin/
Run it

terraform --version 
```
### Add  extension to VS Code
1. Add Terraform extension
```
Terraform
v0.2.5
Anton Kulikov
445,103
```
2. Add Bash Debug extension
```
Bash Debug
v0.3.9
rogalmic
455,874
```

### to remove the follwoing Error:
```
my_vm_instance@instance-1:~/terraform/hashicorp-terraform-practise/terraform-on-gcp$ ./plan.sh first_instance/
./plan.sh: line 2: $'\r': command not found
./plan.sh: line 4: $'\r': command not found
./plan.sh: line 6: $'\r': command not found
./plan.sh: line 11: $'\r': command not found
./plan.sh: line 13: $'\r': command not found
./plan.sh: line 16: $'\r': command not found
./plan.sh: line 18: $'\r': command not found
./plan.sh: line 42: syntax error: unexpected end of file
```
Use
```
sed -i 's/\r$//'  ./plan.sh
sed -i 's/\r$//'  ./apply.sh
sed -i 's/\r$//'  ./destroy.sh
```

### Ref
1. Why .terraform.lock.hcl file is needed to push into Version Control?
https://qiita.com/asdasda/items/b8becb672ad572897c25
2. To create a Private GKE Cluster using terraform
https://github.com/gruntwork-io/terraform-google-gke/blob/v0.10.0/examples/gke-private-cluster/main.tf
3. '\r': command not found - .bashrc / .bash_profile [duplicate]
https://stackoverflow.com/questions/11616835/r-command-not-found-bashrc-bash-profile
4. 


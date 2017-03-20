# Arch Linux PKGBUILD
This branch houses the PKGBUILD script used to install i3scrot in Arch Linux

## Info
You can either install i3scrot via this branch, or from the AUR

## Install
### PKGBUILD
You need to build the package and install scrot (the required package)

You can do so quickly with the -s flag to install dependencies with the build.

`makepkg -sifc`

`-s` - Install dependencies  
`-i` - Install upon completion of build process  
`-f` - Force build if already completed once  
`-c` - Clean up src and pkg upon successful build/packaging

### AUR
Using your favorite AUR tool, install `i3scrot-git`

`$ yaourt -S i3scrot-git`

## Conflicts
i3scrot conflicts with i3-scrot. There can be only one!

## PGP
The package is built and signed with my PGP key, you can get my key for building via gpg

`$ gpg --keyserver hkp://pgp.mit.edu --recv-key E33FF70C`

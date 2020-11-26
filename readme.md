# i3scrot
This is a simple shell script made for taking screenshots with scrot

## Installing
If you wish to install with i3, the Makefile will do that. Otherwise, edit the Makefile with the filename you want to call it, or don't! Doesn't matter.

To install, define a prefix (or don't, don't HAVE to): `$ sudo PREFIX=/usr make install`

## Uninstall
Run `$ sudo PREFIX=/usr make uninstall`

Or if you were a dummy and deleted the code: `$ sudo rm -rf $PREFIX/bin/i3scrot`  
`$PREFIX` being the `PREFIX=` you defined in the install

## Contrinuting
Wanna hack i3scrot? Do so! Fork it. Want to see your changes in here! Make a pull request!

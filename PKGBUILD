# Maintainer: Kaleb Klein <klein.jae@gmail.com>

pkgname=i3scrot-git
pkgver=1.0
pkgrel=1
pkgdesc="Shell script for using scrot in i3"
arch=(any)
license=('MIT')
url="https://github.com/pazuzu156/i3scrot"
depends=('scrot')
conflicts=('i3-scrot')
source=('git://github.com/pazuzu156/i3scrot.git')
validpgpkeys=(120206848BD3375043BF1B253209FA22E33FF70C)
md5sums=('SKIP')

package() {
    cd "$srcdir/i3scrot"
    PREFIX="$pkgdir/usr" make install
}

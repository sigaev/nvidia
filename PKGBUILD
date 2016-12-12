pkgname=nvidia-userspace
pkgver=367.44
pkgrel=1
pkgdesc="NVidia userspace drivers"
arch=('x86_64')
url="http://www.nvidia.com"
source=('all.txz::https://s3.amazonaws.com/sigaev/linux/nvidia/x64/all.txz')
noextract=('all.txz')
md5sums=('40dd05f87e48a1ea1f34dfff8cc1e27a')

package() {
  tar xJf all.txz -C "$pkgdir"
}

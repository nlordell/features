#!/bin/sh
set -e

if [ "$(id -u)" -ne 0 ]; then
	echo -e 'Script must be run as root. Use sudo, su, or add "USER root" to your Dockerfile before running this script.'
	exit 1
fi

export PREFIX=/opt/hare

echo "Installing dependencies"
apt-get update
apt-get install -y --no-install-recommends \
	ca-certificates gcc git libc-dev make openssl

echo "Compiling Hare"
_dir="."
gitenter() {
	package="$1"
	repo="$2"

	echo "### $package ###"

	src="$PREFIX/build/$package"
	if [ -d "$src" ]; then
		git -C "$src" pull
	else
		git clone "$repo" "$src"
	fi
	_dir="$(pwd)"
	cd "$src"
}
gitexit() {
	cd "$_dir"
	_dir="."
}

gitenter qbe git://c9x.me/qbe.git
	make PREFIX=$PREFIX
	make install PREFIX=$PREFIX
gitexit

gitenter scdoc https://git.sr.ht/~sircmpwn/scdoc
	make PREFIX=$PREFIX
	make install PREFIX=$PREFIX
gitexit

gitenter harec https://git.sr.ht/~sircmpwn/harec
	mkdir -p .build
	cd .build
	QBE=/opt/hare/bin/qbe ../configure --prefix=$PREFIX
	make
	make install
gitexit

gitenter hare https://git.sr.ht/~sircmpwn/hare
	cat config.example.mk \
		| sed 's:x86_64:'$(arch)':' \
		| sed 's:/usr/local:/opt/hare:' \
		| sed 's:harec:/opt/hare/bin/harec:' \
		| sed 's:qbe:/opt/hare/bin/qbe:' \
		| sed 's:scdoc:/opt/hare/bin/scdoc:' \
		> config.mk
	make
	make install
gitexit

echo "Installing Hare"
for bin in $PREFIX/bin/*; do
	ln -sf "$bin" "/usr/local/bin/$(basename "$bin")"
done

echo "Done!"

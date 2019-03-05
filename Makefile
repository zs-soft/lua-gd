all: gd lua-gd

gd:lib-gd/configure
	echo "compiling gd"
	cd ./lib-gd && pwd && chmod +x ./configure && ./configure && make -i clean && make && make install && cd ..

lua-gd:lib-lua-gd/luagd.c
	echo "compiling lua-gd"
	cd ./lib-lua-gd && pwd && make -i clean && make && cd ..

install: lib-lua-gd/gd.so
	echo "cp so"
	cp ./lib-lua-gd/gd.so /usr/local/lib/lua/5.1
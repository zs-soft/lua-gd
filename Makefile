all: gd lua-gd

gd:lib-gd/configure
	cd ./lib-gd && pwd && make -i clean && chmod +x ./configure && ./configure && make && make install && cd ..

lua-gd:lib-lua-gd/luagd.c
	cd ./lib-lua-gd && pwd && make -i clean && make && cd ..

install: lib-lua-gd/gd.so
	cp ./lib-lua-gd/gd.so /usr/local/lib/lua/5.1
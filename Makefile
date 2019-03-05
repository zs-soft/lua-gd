all: gd lua-gd

gd:lib-gd/configure
	cd ./lib-gd && pwd && chmod +x ./configure && ./configure && make -i clean && make && make install && cd ..

lua-gd:lib-lua-gd/luagd.c
	cd ./lib-lua-gd && pwd && make -i clean && make && cd ..

install:lib-gd/.libs/libgd.so.2.0.0 lib-lua-gd/gd.so
	cp lib-gd/.libs/libgd.so.2.0.0 /usr/lib64/
	rm -f /usr/lib64/libgd.so.2
	ln -s /usr/lib64/libgd.so.2.0.0 /usr/lib64/libgd.so.2
	cp ./lib-lua-gd/gd.so /usr/local/lib/lua/5.1
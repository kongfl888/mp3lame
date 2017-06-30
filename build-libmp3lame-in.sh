#!/bin/sh
#
##
##--enable-static=yes --enable-shared=no
##--disable-shared --enable-static
##--without-libiconv-prefix
##

export PKG_CONFIG_PATH=/home/Airlltools/ffmpeg_build/lib/pkgconfig/

./configure --prefix=/home/Airlltools/ffmpeg_build --disable-shared --enable-static --build=mingw32 --enable-nasm --disable-analyzer-hooks --disable-gtktest --disable-mp3x  --disable-mp3rtp  &&

make -j$NUMBER_OF_PROCESSORS && make install

make distclean > /dev/null 2>&1

hash -r


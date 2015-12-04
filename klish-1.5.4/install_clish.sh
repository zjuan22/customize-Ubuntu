#!/bin/bash


sudo ./configure --enable-shared=yes --enable-static=no

sudo make install

sudo cp .libs/* /usr/lib

sudo ./configure --enable-shared=yes --enable-static=no

sudo make install

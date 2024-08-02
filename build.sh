!#/bin/bash

echo "Running premake5"
premake5 gmake2

echo "Cleaning make files"
make clean

echo "Running make with bear"
bear -- make

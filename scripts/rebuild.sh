echo "cleaning bin/obj files"
rm -rf bin
rm -rf obj

echo "cleaning make files"
make clean

echo "running premake5"
premake5 gmake2

echo "running make with bear"
bear -- make

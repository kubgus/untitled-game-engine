echo "running premake5"
premake5 gmake2

echo "running make with bear"
bear -- make

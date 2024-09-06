echo "[confirming SDL2 on system...]"
if ! command -v sdl2-config &> /dev/null
then
    echo "Error: SDL2 is not installed. Please install SDL2 to continue."
    exit 1
fi

echo "[running premake5...]"
premake5 gmake2

echo "[running make with bear...]"
bear -- make

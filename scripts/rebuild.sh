echo "[cleaning bin/obj files...]"
rm -rf ${PWD}/bin
rm -rf ${PWD}/obj
rm -rf ${PWD}/.cache

echo "[cleaning make files...]"
make clean

sh ${PWD}/scripts/build.sh

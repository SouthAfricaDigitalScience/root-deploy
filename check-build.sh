#!/bin/bash -e
. /etc/profile.d/modules.sh
module load ci
module add zlib
module add cmake
module add gcc/${GCC_VERSION}
module add gsl/2.1
module add python/2.7.11-gcc-${GCC_VERSION}
module add cfitsio
module add openssl/1.0.2g
module add sqlite
module add freetype
module add fftw/3.3.4-gcc-${GCC_VERSION}-mpi-1.8.8

cd ${WORKSPACE}/${NAME}-${VERSION}/build-${BUILD_NUMBER}
#make check

echo $?

make install
mkdir -p ${REPO_DIR}
mkdir -p modules
(
cat <<MODULE_FILE
#%Module1.0
## $NAME modulefile
##
proc ModulesHelp { } {
    puts stderr "       This module does nothing but alert the user"
    puts stderr "       that the [module-info name] module is not available"
}

module-whatis   "$NAME $VERSION."
setenv       ROOT_VERSION       $VERSION
setenv       ROOT_DIR           /apprepo/$::env(SITE)/$::env(OS)/$::env(ARCH)/$NAME/$VERSION
prepend-path LD_LIBRARY_PATH   $::env(ROOT_DIR)/lib
prepend-path CFLAGS            "-I${ROOT_DIR}/include"
prepend-path LDFLAGS           "-L${ROOT_DIR}/lib"
prepend-path PATH              $::env(ROOT_DIR)/bin
MODULE_FILE
) > modules/$VERSION

mkdir -p ${LIBRARIES_MODULES}/${NAME}-gcc-${GCC_VERSION}
cp modules/$VERSION-gcc-${GCC_VERSION} ${LIBRARIES_MODULES}/${NAME}

module avail ${NAME}

module add ${NAME}-gcc-${GCC_VERSION}
source $ROOT_DIR/bin/thisroot.sh
which root
root -b -q

#!/bin/bash -e
. /etc/profile.d/modules.sh

module load ci
module add gcc/${GCC_VERSION}
module add cmake
module add xz
module add gsl/2.3
module add python/2.7.13-gcc-${GCC_VERSION}
module add cfitsio
module add openssl/1.0.2j
module add sqlite
module add freetype
module add fftw/3.3.4-gcc-${GCC_VERSION}-mpi-1.8.8

cd ${WORKSPACE}/${NAME}-${VERSION}/build-${BUILD_NUMBER}

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
setenv       ROOT_DIR           /data/ci-build/$::env(SITE)/$::env(OS)/$::env(ARCH)/$NAME/$VERSION-gcc-${GCC_VERSION}
setenv       ROOTSYS         /data/ci-build/$::env(SITE)/$::env(OS)/$::env(ARCH)/$NAME/$VERSION-gcc-${GCC_VERSION}
prepend-path LD_LIBRARY_PATH   $::env(ROOT_DIR)/lib
setenv CFLAGS            "-I${ROOT_DIR}/include $CFLAGS"
setenv LDFLAGS           "-L${ROOT_DIR}/lib $LDFLAGS"
prepend-path PATH              $::env(ROOT_DIR)/bin
MODULE_FILE
) > modules/$VERSION-gcc-${GCC_VERSION}

mkdir -p ${HEP}/${NAME}
cp modules/$VERSION-gcc-${GCC_VERSION} ${HEP}/${NAME}

module avail ${NAME}

module add ${NAME}/${VERSION}-gcc-${GCC_VERSION}
source $ROOT_DIR/bin/thisroot.sh
which root.exe
root.exe -b -q

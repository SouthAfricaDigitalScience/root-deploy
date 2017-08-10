#!/bin/bash -e
# this should be run after check-build finishes.
. /etc/profile.d/modules.sh
module add  deploy
module add cmake
module add gcc/${GCC_VERSION}
module add  xz
module add gsl/2.3
module add python/2.7.13-gcc-${GCC_VERSION}
module add cfitsio
module add openssl/1.0.2j
module add sqlite
module add freetype
module add fftw/3.3.4-gcc-${GCC_VERSION}-mpi-1.8.8
module add openblas/0.2.19-gcc-${GCC_VERSION}

mkdir -p ${WORKSPACE}
mkdir -p ${SRC_DIR}
mkdir -p ${SOFT_DIR}

cd ${WORKSPACE}/${NAME}-${VERSION}/build-${BUILD_NUMBER}
echo "All tests have passed, will now build into ${SOFT_DIR}"
rm -rf
# Using CMAKE. See https://root.cern.ch/installing-root-source

cmake ../ -G"Unix Makefiles" \
-DCMAKE_INSTALL_PREFIX=${SOFT_DIR}-gcc-${GCC_VERSION} \
-Dbuiltin_freetype=OFF \
-Dbuiltin_zlib=ON \
-Dbuiltin_tbb=ON \
-Dbuiltin_lzma=OFF \
-DLZMA_INCLUDE_DIR=${XZ_DIR}/include \
-DLZMA_LIBRARY=${XZ_DIR}/lib/liblzma.so \
-Dx11=OFF \
-Dbuiltin_gsl=OFF \
-Dgsl_shared=ON \
-DGSL_DIR=${GSL_DIR}  \
-Dbuiltin_cfitsio=OFF \
-Dfitsio=ON \
-DCFITSIO_INCLUDE_DIR=${CFITSIO_DIR}/include \
-DCFITSIO_LIBRARY=${CFITSIO_DIR}/lib/libcfitsio.so \
-DCFITSIO=${CFITSIO_DIR} \
-Dhdfs=OFF \
-Dfortran=ON \
-Droofit=ON \
-Droottest=ON \
-Dtest=ON

OS="Linux" make

make install
echo "Creating the modules file directory ${HEP}"
mkdir -p ${HEP}/${NAME}
(
cat <<MODULE_FILE
#%Module1.0
## $NAME modulefile
##
proc ModulesHelp { } {
    puts stderr "       This module does nothing but alert the user"
    puts stderr "       that the [module-info name] module is not available"
}

module-whatis   "$NAME $VERSION : See https://github.com/SouthAfricaDigitalScience/ROOT-deploy"
setenv ROOT_VERSION       $VERSION
setenv ROOT_DIR           $::env(CVMFS_DIR)/$::env(SITE)/$::env(OS)/$::env(ARCH)/$NAME/$VERSION-gcc-$GCC_VERSION
setenv ROOTSYS           $::env(CVMFS_DIR)/$::env(SITE)/$::env(OS)/$::env(ARCH)/$NAME/$VERSION-gcc-$GCC_VERSION
prepend-path LD_LIBRARY_PATH   $::env(ROOT_DIR)/lib
prepend-path GCC_INCLUDE_DIR   $::env(ROOT_DIR)/include
prepend-path CFLAGS            "-I${ROOT_DIR}/include"
prepend-path LDFLAGS           "-L${ROOT_DIR}/lib"
prepend-path PATH              $::env(ROOT_DIR)/bin
MODULE_FILE
) > ${HEP}/${NAME}/${VERSION}-gcc-${GCC_VERSION}

module add ${NAME}/${VERSION}-gcc-${GCC_VERSION}
source $ROOT_DIR/bin/thisroot.sh
which root.exe
root.exe -b -q

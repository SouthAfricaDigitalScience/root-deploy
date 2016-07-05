#!/bin/bash -e
# this should be run after check-build finishes.
. /etc/profile.d/modules.sh
echo ${SOFT_DIR}
module add deploy
module add cmake
module add zlib
module add gcc/${GCC_VERSION}
module add  gsl/2.1
module add python/2.7.11-gcc-${GCC_VERSION}
module add cfitsio
module add openssl/1.0.2g
module add sqlite
module add freetype
module add fftw/3.3.4-gcc-${GCC_VERSION}-mpi-1.8.8

cd ${WORKSPACE}/${NAME}-${VERSION}/build-${BUILD_NUMBER}
echo "All tests have passed, will now build into ${SOFT_DIR}"
rm -rf
# ../configure --prefix=${SOFT_DIR} \
# --enable-fftw3 \
# --with-fftw3-incdir=${FFTW_DIR}/include \
# --with-fftw3-libdir=${FFTW_DIR}/lib \
# --with-python=$(which python3.5) \
# --disable-x11 \
# --enable-sqlite \
# --with-sqlite-incdir=${SQLITE_DIR}/include \
# --with-sqlite-libdir=${SQLITE_DIR}/lib \
# --enable-mathmore \
# --enable-genvector \
# --enable-roofit \
# --enable-shared \
# --enable-table \
# --enable-mathcore \
# --enable-gsl-shared \
# --with-gsl-incdir=${GSL_DIR}/include \
# --with-gsl-libdir=${GSL_DIR}/lib \
# --enable-fitsio \
# --with-cfitsio-incdir=${CFITSIO_DIR}/include \
# --with-cfitsio-libdir=${CFITSIO_DIR}/lib

# Using CMAKE. See https://root.cern.ch/installing-root-source

cmake ../ \
-Dbuiltin_freetype=OFF \
-Dbuiltin_zlib=OFF \
-Dx11=OFF \
-Dbuiltin_gsl=OFF \
-Dgsl_shared=ON \
-DGSL_DIR=${GSL_DIR}  \
-Dbuiltin_cfitsio=OFF \
-Dfitsio=ON \
-DCFITSIO=${CFITSIO_DIR} \
-Dfortran=ON \
-Droofit=ON \
-Droottest=ON \
-Dtest=ON

make install -j2
echo "Creating the modules file directory ${LIBRARIES_MODULES}"
mkdir -p ${LIBRARIES_MODULES}/${NAME}
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
setenv ROOT_DIR           $::env(CVMFS_DIR)/$::env(SITE)/$::env(OS)/$::env(ARCH)/$NAME/$VERSION-gcc-$::env(GCC_VERSION)
prepend-path LD_LIBRARY_PATH   $::env(ROOT_DIR)/lib
prepend-path GCC_INCLUDE_DIR   $::env(ROOT_DIR)/include
prepend-path CFLAGS            "-I${ROOT_DIR}/include"
prepend-path LDFLAGS           "-L${ROOT_DIR}/lib"
prepend-path PATH              $::env(ROOT_DIR)/bin
MODULE_FILE
) > ${LIBRARIES_MODULES}/${NAME}/${VERSION}-gcc-${GCC_VERSION}

module add ${NAME}-gcc-${GCC_VERSION}
source $ROOT_DIR/bin/thisroot.sh
which root
root -b -q

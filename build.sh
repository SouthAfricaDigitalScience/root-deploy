#!/bin/bash -e
. /etc/profile.d/modules.sh

module add ci
# dependencies
module add cmake
module add gcc/${GCC_VERSION}
module add gsl/2.3
module add python/2.7.13-gcc-${GCC_VERSION}
module add cfitsio
module add openssl/1.0.2j
module add sqlite
module add freetype
module add fftw/3.3.4-gcc-${GCC_VERSION}-mpi-1.8.8

SOURCE_FILE=${NAME}_v${VERSION}.source.tar.gz

mkdir -p ${WORKSPACE}
mkdir -p ${SRC_DIR}
mkdir -p ${SOFT_DIR}

#  Download the source file

if [ ! -e ${SRC_DIR}/${SOURCE_FILE}.lock ] && [ ! -s ${SRC_DIR}/${SOURCE_FILE} ] ; then
  touch  ${SRC_DIR}/${SOURCE_FILE}.lock
  echo "seems like this is the first build - let's geet the source"
  wget --no-check-certificate https://root.cern.ch/download/${SOURCE_FILE} -O ${SRC_DIR}/${SOURCE_FILE}
  echo "releasing lock"
  rm -v ${SRC_DIR}/${SOURCE_FILE}.lock
elif [ -e ${SRC_DIR}/${SOURCE_FILE}.lock ] ; then
  # Someone else has the file, wait till it's released
  while [ -e ${SRC_DIR}/${SOURCE_FILE}.lock ] ; do
    echo " There seems to be a download currently under way, will check again in 5 sec"
    sleep 5
  done
else
  echo "continuing from previous builds, using source at " ${SRC_DIR}/${SOURCE_FILE}
fi
tar xzf  ${SRC_DIR}/${SOURCE_FILE} -C ${WORKSPACE} --skip-old-files
mkdir -p ${WORKSPACE}/${NAME}-${VERSION}/build-${BUILD_NUMBER}
cd ${WORKSPACE}/${NAME}-${VERSION}/build-${BUILD_NUMBER}
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
-Dbuiltin_zlib=ON \
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

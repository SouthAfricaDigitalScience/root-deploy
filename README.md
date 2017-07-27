[![Build Status](http://ci.sagrid.ac.za/buildStatus/icon?job=root-deploy)](http://ci.sagrid.ac.za/job/root-deploy)
# ROOT-deploy

scripts for building and testing root.

# Versions

  * v5.34/34
  * v6.09.02
  * v6.08

# Dependencies

  *   gcc
  *   gsl
  *   python/2.7.13
  *   cfitsio
  *   openssl
  *   sqlite
  *   freetype
  *   fftw


# Configuration

The following options are enabled :

  - [x] freetype:
    - `FREETYPE_INCLUDE_DIR_freetype2:PATH=/data/ci-build/generic/centos6/x86_64/freetype/2.7.1/include/freetype2`
    -  `FREETYPE_LIBRARY_RELEASE:FILEPATH=/data/ci-build/generic/centos6/x86_64/freetype/2.7.1/lib/libfreetype.so`
    -

// Specify the directory containing lzma.h
LZMA_INCLUDE_DIR:PATH=LZMA_INCLUDE_DIR-NOTFOUND

// Specify the lzma library here.
LZMA_LIBRARY:FILEPATH=LZMA_LIBRARY-NOTFOUND

// Path to a program.
PCRE_CONFIG_EXECUTABLE:FILEPATH=PCRE_CONFIG_EXECUTABLE-NOTFOUND

// Path to a file.
X11_ICE_INCLUDE_PATH:PATH=X11_ICE_INCLUDE_PATH-NOTFOUND

// Path to a library.
X11_ICE_LIB:FILEPATH=X11_ICE_LIB-NOTFOUND

// Path to a file.
X11_SM_INCLUDE_PATH:PATH=X11_SM_INCLUDE_PATH-NOTFOUND

// Path to a library.
X11_SM_LIB:FILEPATH=X11_SM_LIB-NOTFOUND

// Path to a file.
X11_X11_INCLUDE_PATH:PATH=/usr/include

// Path to a library.
X11_X11_LIB:FILEPATH=/usr/lib64/libX11.so

// Path to a file.
X11_XRes_INCLUDE_PATH:PATH=X11_XRes_INCLUDE_PATH-NOTFOUND

// Path to a library.
X11_XRes_LIB:FILEPATH=X11_XRes_LIB-NOTFOUND

// Path to a file.
X11_XShm_INCLUDE_PATH:PATH=X11_XShm_INCLUDE_PATH-NOTFOUND

// Path to a file.
X11_XSync_INCLUDE_PATH:PATH=X11_XSync_INCLUDE_PATH-NOTFOUND

// Path to a file.
X11_XTest_INCLUDE_PATH:PATH=X11_XTest_INCLUDE_PATH-NOTFOUND

// Path to a library.
X11_XTest_LIB:FILEPATH=X11_XTest_LIB-NOTFOUND

// Path to a file.
X11_Xaccessrules_INCLUDE_PATH:PATH=X11_Xaccessrules_INCLUDE_PATH-NOTFOUND

// Path to a file.
X11_Xaccessstr_INCLUDE_PATH:PATH=/usr/include

// Path to a file.
X11_Xau_INCLUDE_PATH:PATH=/usr/include

// Path to a library.
X11_Xau_LIB:FILEPATH=/usr/lib64/libXau.so

// Path to a file.
X11_Xcomposite_INCLUDE_PATH:PATH=X11_Xcomposite_INCLUDE_PATH-NOTFOUND

// Path to a library.
X11_Xcomposite_LIB:FILEPATH=X11_Xcomposite_LIB-NOTFOUND

// Path to a file.
X11_Xcursor_INCLUDE_PATH:PATH=X11_Xcursor_INCLUDE_PATH-NOTFOUND

// Path to a library.
X11_Xcursor_LIB:FILEPATH=X11_Xcursor_LIB-NOTFOUND

// Path to a file.
X11_Xdamage_INCLUDE_PATH:PATH=X11_Xdamage_INCLUDE_PATH-NOTFOUND

// Path to a library.
X11_Xdamage_LIB:FILEPATH=X11_Xdamage_LIB-NOTFOUND

// Path to a file.
X11_Xdmcp_INCLUDE_PATH:PATH=X11_Xdmcp_INCLUDE_PATH-NOTFOUND

// Path to a library.
X11_Xdmcp_LIB:FILEPATH=X11_Xdmcp_LIB-NOTFOUND

// Path to a library.
X11_Xext_LIB:FILEPATH=X11_Xext_LIB-NOTFOUND

// Path to a file.
X11_Xfixes_INCLUDE_PATH:PATH=X11_Xfixes_INCLUDE_PATH-NOTFOUND

// Path to a library.
X11_Xfixes_LIB:FILEPATH=X11_Xfixes_LIB-NOTFOUND

// Path to a file.
X11_Xft_INCLUDE_PATH:PATH=X11_Xft_INCLUDE_PATH-NOTFOUND

// Path to a library.
X11_Xft_LIB:FILEPATH=X11_Xft_LIB-NOTFOUND

// Path to a file.
X11_Xi_INCLUDE_PATH:PATH=X11_Xi_INCLUDE_PATH-NOTFOUND

// Path to a library.
X11_Xi_LIB:FILEPATH=X11_Xi_LIB-NOTFOUND

// Path to a file.
X11_Xinerama_INCLUDE_PATH:PATH=X11_Xinerama_INCLUDE_PATH-NOTFOUND

// Path to a library.
X11_Xinerama_LIB:FILEPATH=X11_Xinerama_LIB-NOTFOUND

// Path to a file.
X11_Xinput_INCLUDE_PATH:PATH=X11_Xinput_INCLUDE_PATH-NOTFOUND

// Path to a library.
X11_Xinput_LIB:FILEPATH=X11_Xinput_LIB-NOTFOUND

// Path to a file.
X11_Xkb_INCLUDE_PATH:PATH=/usr/include

// Path to a file.
X11_Xkbfile_INCLUDE_PATH:PATH=X11_Xkbfile_INCLUDE_PATH-NOTFOUND

// Path to a library.
X11_Xkbfile_LIB:FILEPATH=X11_Xkbfile_LIB-NOTFOUND

// Path to a file.
X11_Xkblib_INCLUDE_PATH:PATH=/usr/include

// Path to a file.
X11_Xlib_INCLUDE_PATH:PATH=/usr/include

// Path to a file.
X11_Xmu_INCLUDE_PATH:PATH=X11_Xmu_INCLUDE_PATH-NOTFOUND

// Path to a library.
X11_Xmu_LIB:FILEPATH=X11_Xmu_LIB-NOTFOUND

// Path to a file.
X11_Xpm_INCLUDE_PATH:PATH=X11_Xpm_INCLUDE_PATH-NOTFOUND

// Path to a library.
X11_Xpm_LIB:FILEPATH=X11_Xpm_LIB-NOTFOUND

// Path to a file.
X11_Xrandr_INCLUDE_PATH:PATH=X11_Xrandr_INCLUDE_PATH-NOTFOUND

// Path to a library.
X11_Xrandr_LIB:FILEPATH=X11_Xrandr_LIB-NOTFOUND

// Path to a file.
X11_Xrender_INCLUDE_PATH:PATH=X11_Xrender_INCLUDE_PATH-NOTFOUND

// Path to a library.
X11_Xrender_LIB:FILEPATH=X11_Xrender_LIB-NOTFOUND

// Path to a file.
X11_Xscreensaver_INCLUDE_PATH:PATH=X11_Xscreensaver_INCLUDE_PATH-NOTFOUND

// Path to a library.
X11_Xscreensaver_LIB:FILEPATH=X11_Xscreensaver_LIB-NOTFOUND

// Path to a file.
X11_Xshape_INCLUDE_PATH:PATH=X11_Xshape_INCLUDE_PATH-NOTFOUND

// Path to a file.
X11_Xt_INCLUDE_PATH:PATH=X11_Xt_INCLUDE_PATH-NOTFOUND

// Path to a library.
X11_Xt_LIB:FILEPATH=X11_Xt_LIB-NOTFOUND

// Path to a file.
X11_Xutil_INCLUDE_PATH:PATH=/usr/include

// Path to a file.
X11_Xv_INCLUDE_PATH:PATH=X11_Xv_INCLUDE_PATH-NOTFOUND

// Path to a library.
X11_Xv_LIB:FILEPATH=X11_Xv_LIB-NOTFOUND

// Path to a library.
X11_Xxf86misc_LIB:FILEPATH=X11_Xxf86misc_LIB-NOTFOUND

// Path to a library.
X11_Xxf86vm_LIB:FILEPATH=X11_Xxf86vm_LIB-NOTFOUND

// Path to a file.
X11_dpms_INCLUDE_PATH:PATH=X11_dpms_INCLUDE_PATH-NOTFOUND

// Path to a file.
X11_xf86misc_INCLUDE_PATH:PATH=/usr/include

// Path to a file.
X11_xf86vmode_INCLUDE_PATH:PATH=X11_xf86vmode_INCLUDE_PATH-NOTFOUND

// Path to a file.
ZLIB_INCLUDE_DIR:PATH=/usr/include

// Path to a library.
ZLIB_LIBRARY_DEBUG:FILEPATH=ZLIB_LIBRARY_DEBUG-NOTFOUND

// Path to a library.
ZLIB_LIBRARY_RELEASE:FILEPATH=/usr/lib64/libz.so

// Dataset manager for PROOF-based analysis facilities
afdsmgrd:BOOL=OFF

// AFS support, requires AFS libs and objects
afs:BOOL=OFF

// AliEn support, requires libgapiUI from ALICE
alien:BOOL=ON

// Enable all optional components
all:BOOL=OFF

// Image processing support, requires libAfterImage
asimage:BOOL=ON

// Include tiff support in image processing
astiff:BOOL=ON

// Bonjour support, requires libdns_sd and/or Avahi
bonjour:BOOL=ON

// Built included libAfterImage, or use system libAfterImage
builtin_afterimage:BOOL=ON

// Built the FITSIO library internally (downloading tarfile from the Web)
builtin_cfitsio:BOOL=OFF

// Built the Davix library internally (downloading tarfile from the Web)
builtin_davix:BOOL=OFF

// Built included libfreetype, or use system libfreetype
builtin_freetype:BOOL=OFF

// Built included libFTGL, or use system libftgl
builtin_ftgl:BOOL=ON

// Built included libGLEW, or use system libGLEW
builtin_glew:BOOL=ON

// Built the GSL library internally (downloading tarfile from the Web)
builtin_gsl:BOOL=OFF

//
builtin_lzma:BOOL=ON

// Build OpenSSL internally, or use system OpenSSL
builtin_openssl:BOOL=OFF

//
builtin_pcre:BOOL=ON

// Built the XROOTD internally (downloading tarfile from the Web)
builtin_xrootd:BOOL=OFF

// Built included libz, or use system libz
builtin_zlib:BOOL=OFF

// CASTOR support, requires libshift from CASTOR >= 1.5.2
castor:BOOL=ON

// Chirp support (Condor remote I/O), requires libchirp_client
chirp:BOOL=ON

// Build the libCintex Reflex interface library
cintex:BOOL=ON

// Enable new CLING C++ interpreter
cling:BOOL=OFF

// Use native Cocoa/Quartz graphics backend (MacOS X only)
cocoa:BOOL=OFF

// Build using C++11 compatible mode, requires gcc > 4.7.x or clang
cxx11:BOOL=OFF

// Build using C++14 compatible mode, requires gcc > 4.9.x or clang
cxx14:BOOL=OFF

// DavIx library for HTTP/WEBDAV access
davix:BOOL=ON

// dCache support, requires libdcap from DESY
dcache:BOOL=ON

// Turn on compiler exception handling capability
exceptions:BOOL=ON

// Explicitly link with all dependent libraries
explicitlink:BOOL=ON

// Fail the configure step if a required external package is missing
fail-on-missing:BOOL=OFF

// Fast Fourier Transform support, requires libfftw3
fftw3:BOOL=ON

// Read images and data from FITS files, requires cfitsio
fitsio:BOOL=ON

// Enable the Fortran components of ROOT
fortran:BOOL=ON

// GDML writer and reader
gdml:BOOL=OFF

// Build the new libGenVector library
genvector:BOOL=ON

// GFAL support, requires libgfal
gfal:BOOL=ON

// gLite support, requires libglite-api-wrapper v.3 from GSI (https://subversion.gsi.de/trac/dgrid/wiki)
glite:BOOL=ON

// Globus authentication support, requires Globus toolkit
globus:BOOL=OFF

// Do not automatically search for support libraries, but include X11
gminimal:BOOL=OFF

// Perform installation following the GNU guidelines
gnuinstall:BOOL=OFF

// Enable linking against shared libraries for GSL (default no)
gsl_shared:BOOL=OFF

// Graphs visualization support, requires graphviz
gviz:BOOL=ON

// HDFS support; requires libhdfs from HDFS >= 0.19.1
hdfs:BOOL=ON

// HTTP Server support
http:BOOL=OFF

// Kerberos5 support, requires Kerberos libs
krb5:BOOL=ON

// LDAP support, requires (Open)LDAP libs
ldap:BOOL=ON

// Build using libc++, requires cxx11 option (MacOS X only, for the time being)
libcxx:BOOL=OFF

// Build the new libMathMore extended math library, requires GSL (vers. >= 1.8)
mathmore:BOOL=ON

// A memory statistics utility, helps to detect memory leaks
memstat:BOOL=ON

// Do not automatically search for support libraries
minimal:BOOL=OFF

// Build the new libMinuit2 minimizer library
minuit2:BOOL=OFF

// Monalisa monitoring support, requires libapmoncpp
monalisa:BOOL=ON

// MySQL support, requires libmysqlclient
mysql:BOOL=ON

// ODBC support, requires libiodbc or libodbc
odbc:BOOL=ON

// OpenGL support, requires libGL and libGLU
opengl:BOOL=ON

// Oracle support, requires libocci
oracle:BOOL=ON

//  
pch:BOOL=ON

// PostgreSQL support, requires libpq
pgsql:BOOL=ON

// Pythia6 EG support, requires libPythia6
pythia6:BOOL=ON

// Delayed linking of Pythia6 library
pythia6_nolink:BOOL=OFF

// Pythia8 EG support, requires libPythia8
pythia8:BOOL=ON

// Python ROOT bindings, requires python >= 2.2
python:BOOL=ON

// Qt graphics backend, requires libqt >= 4.8
qt:BOOL=OFF

// GSI's Qt integration, requires libqt >= 4.8
qtgsi:BOOL=OFF

// Build the libReflex dictionary library
reflex:BOOL=ON

// RFIO support, requires libshift from CASTOR >= 1.5.2
rfio:BOOL=ON

// Build the libRooFit advanced fitting package
roofit:BOOL=OFF

// Set run-time library load path on executables and shared libraries (at installation area)
rpath:BOOL=OFF

// Ruby ROOT bindings, requires ruby >= 1.8
ruby:BOOL=OFF

// MaxDB/SapDB support, requires libsqlod and libsqlrte
sapdb:BOOL=ON

// Shadow password support
shadowpw:BOOL=ON

// Use shared 3rd party libraries if possible
shared:BOOL=ON

// Set version number in sonames (recommended)
soversion:BOOL=OFF

// SQLite support, requires libsqlite3
sqlite:BOOL=ON

// SRP support, requires SRP source tree
srp:BOOL=ON

// SSL encryption support, requires openssl
ssl:BOOL=ON

// Build libTable contrib library
table:BOOL=OFF

// Enable testing with CTest
testing:BOOL=OFF

// Using thread library (cannot be disabled)
thread:BOOL=ON

// Build TMVA multi variate analysis library
tmva:BOOL=ON

// UNURAN - package for generating non-uniform random numbers
unuran:BOOL=OFF

// Vc adds a few new types for portable and intuitive SIMD programming
vc:BOOL=OFF

// VDT adds a set of fast and vectorisable mathematical functions
vdt:BOOL=ON

// Link against the Windows debug runtime library
winrtdebug:BOOL=OFF

// X11 support
x11:BOOL=ON

// Xft support (X11 antialiased fonts)
xft:BOOL=ON

// XML parser interface
xml:BOOL=ON

// Build xrootd file server and its client (if supported)
xrootd:BOOL=ON

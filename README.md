[![Build Status](http://ci.sagrid.ac.za/buildStatus/icon?job=root-deploy)](http://ci.sagrid.ac.za/job/root-deploy)

# ROOT-deploy

scripts for building and testing root.

# Versions

  * v6.18.04
  * v6.20.04

# Dependencies

  *   gcc
  *   gsl
  *   python/3.6
  *   cfitsio
  *   openssl
  *   sqlite
  *   freetype
  *   fftw
  *   lzma
  *   opeblas


# Configuration
 
The following options are enabled :

  - [x] freetype:
    - `FREETYPE_INCLUDE_DIR_freetype2:PATH=/data/ci-build/generic/centos6/x86_64/freetype/2.7.1/include/freetype2`
    -  `FREETYPE_LIBRARY_RELEASE:FILEPATH=/data/ci-build/generic/centos6/x86_64/freetype/2.7.1/lib/libfreetype.so`
    - [ ] LZMA
    - [ ] Perl regular expressions
    - [ ] X11
    - [ ] Zlib
    - [ ] Dataset manager for PROOF-based analysis facilities
    - [ ] AFS
    - [ ] AliEn
    - [X] asimage : ON, with TIFF support (builtin)
    - [x] FITSIO (external)
    - [ ] Davix OFF
    - [ ] System FreeType
    - [x] External GSL
    - [ ] builtin_lzma:BOOL=ON
    - [x] Build OpenSSL internally builtin_openssl:BOOL=OFF
    - [ ] builtin_pcre:BOOL=ON
    - [ ] builtin_xrootd:BOOL=OFF
    - [ ] Built included libz, or use system libz builtin_zlib:BOOL=OFF
    - [ ] CASTOR support, requires libshift from CASTOR >= 1.5.2
    - [x] Chirp support (Condor remote I/O), requires libchirp_client chirp:BOOL=ON
    - [x] Build the libCintex Reflex interface library cintex:BOOL=ON
    - [x] Enable new CLING C++ interpreter cling:BOOL=ON
    - [ ] Use native Cocoa/Quartz graphics backend (MacOS X only) cocoa:BOOL=OFF
    - [x] Build using C++11 compatible mode, requires gcc > 4.7.x or clang cxx11:BOOL=ON
    - [x] Build using C++14 compatible mode, requires gcc > 4.9.x or clang cxx14:BOOL=ON
    - [x] Build using C++17 compatible mode, requires gcc > 4.9.x or clang cxx17:BOOL=ON
    - [x] DavIx library for HTTP/WEBDAV access davix:BOOL=ON
    - [ ] dCache support, requires libdcap from DESY dcache:BOOL=ON
    - [x] Turn on compiler exception handling capability exceptions:BOOL=ON
    - [x]  Explicitly link with all dependent libraries explicitlink:BOOL=ON
    - [ ] Fail the configure step if a required external package is missing fail-on-missing:BOOL=OFF
    - [x] Fast Fourier Transform support, requires libfftw3 fftw3:BOOL=ON
    - [x] Read images and data from FITS files, requires cfitsio fitsio:BOOL=ON
    - [x] Enable the Fortran components of ROOT fortran:BOOL=ON
    - [x] GDML writer and reader gdml:BOOL=OFF
    - [x] Build the new libGenVector library genvector:BOOL=ON
    - [ ] GFAL support, requires libgfal gfal:BOOL=ON
    - [ ] gLite support, requires libglite-api-wrapper v.3 from GSI (https://subversion.gsi.de/trac/dgrid/wiki) glite:BOOL=ON
    - [ ] Globus authentication support, requires Globus toolkit globus:BOOL=OFF
    - [ ] Do not automatically search for support libraries, but include X11 gminimal:BOOL=OFF
    - [ ] Perform installation following the GNU guidelines gnuinstall:BOOL=OFF
    - [ ] Enable linking against shared libraries for GSL (default no) gsl_shared:BOOL=OFF
    - [x] Graphs visualization support, requires graphviz gviz:BOOL=ON
    - [ ] HDFS support; requires libhdfs from HDFS >= 0.19.1 hdfs:BOOL=OFF
    - [ ] HTTP Server support http:BOOL=OFF
    - [ ]  Kerberos5 support, requires Kerberos libs krb5:BOOL=ON
    - [x] LDAP support, requires (Open)LDAP libs ldap:BOOL=ON
    - [ ] Build using libc++, requires cxx11 option (MacOS X only, for the time being) libcxx:BOOL=OFF
    - [x] Build the new libMathMore extended math library, requires GSL (vers. >= 1.8) mathmore:BOOL=ON
    - [x]  memory statistics utility, helps to detect memory leaks memstat:BOOL=ON
    - [ ] Do not automatically search for support libraries minimal:BOOL=OFF
    - [ ] Build the new libMinuit2 minimizer library minuit2:BOOL=OFF
    - [ ] Monalisa monitoring support, requires libapmoncpp monalisa:BOOL=OFF
    - [ ] MySQL support, requires libmysqlclient mysql:BOOL=ON
    - [ ] ODBC support, requires libiodbc or libodbc odbc:BOOL=ON
    - [ ] OpenGL support, requires libGL and libGLU opengl:BOOL=ON
    - [ ] Oracle support, requires libocci oracle:BOOL=ON
    - [ ]  pch:BOOL=ON
    - [ ] PostgreSQL support, requires libpq pgsql:BOOL=ON
    - [ ] Pythia6 EG support, requires libPythia6 pythia6:BOOL=OFF
    - [ ] Delayed linking of Pythia6 library pythia6_nolink:BOOL=OF
    - [ ] Pythia8 EG support, requires libPythia8 pythia8:BOOL=ON
    - [x] Python ROOT bindings, requires python >= 2.2 python:BOOL=ON
    - [ ] Qt graphics backend, requires libqt >= 4.8 qt:BOOL=OFF
    - [ ] GSI's Qt integration, requires libqt >= 4.8 qtgsi:BOOL=OFF
    - [ ] Build the libReflex dictionary library reflex:BOOL=ON
    - [ ] RFIO support, requires libshift from CASTOR >= 1.5.2 rfio:BOOL=OFF
    - [ ] Build the libRooFit advanced fitting package roofit:BOOL=OFF
    - [ ] Set run-time library load path on executables and shared libraries (at installation area) rpath:BOOL=OFF
    - [ ] Ruby ROOT bindings, requires ruby >= 1.8 ruby:BOOL=OFF
    - [ ] MaxDB/SapDB support, requires libsqlod and libsqlrte sapdb:BOOL=OFF
    - [x] Shadow password support shadowpw:BOOL=ON
    - [x] Use shared 3rd party libraries if possible shared:BOOL=ON
    - [ ] Set version number in sonames (recommended) soversion:BOOL=OFF
    - [x] SQLite support, requires libsqlite3 sqlite:BOOL=ON
    - [ ] SRP support, requires SRP source tree srp:BOOL=OFF
    - [x] SSL encryption support, requires openssl ssl:BOOL=ON
    - [ ] Build libTable contrib library table:BOOL=OFF
    - [x] Enable testing with CTest testing:BOOL=ON
    - [x] Using thread library (cannot be disabled) thread:BOOL=ON
    - [x]  Build TMVA multi variate analysis library tmva:BOOL=ON
    - [ ] UNURAN - package for generating non-uniform random numbers unuran:BOOL=OFF
    - [ ] Vc adds a few new types for portable and intuitive SIMD programming vc:BOOL=OFF
    - [x] VDT adds a set of fast and vectorisable mathematical functions vdt:BOOL=ON
    - [ ] Link against the Windows debug runtime library winrtdebug:BOOL=OFF
    - [ ] X11 support x11:BOOL=OFF
    - [ ] Xft support (X11 antialiased fonts) xft:BOOL=OFF
    - [x] XML parser interface xml:BOOL=ON
    - [ ] Build xrootd file server and its client (if supported) xrootd:BOOL=OFF

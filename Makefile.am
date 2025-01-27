# allow to use Host cuda functions in C/C++
#DEF_INCLUDES = @CUDA_INCLUDES@

if WANT_JANSSON
JANSSON_INCLUDES= -I$(top_srcdir)/compat/jansson
else
JANSSON_INCLUDES=
endif

EXTRA_DIST		= autogen.sh README.md README.txt LICENSE.txt \
			  TCMiner.sln TCMiner.vcxproj TCMiner.vcxproj.filters \
			  compat/gettimeofday.c compat/getopt/getopt_long.c

SUBDIRS = compat

bin_PROGRAMS = TCMiner

TCMiner_SOURCES	= elist.h miner.h compat.h \
			  compat/inttypes.h compat/stdbool.h compat/unistd.h bignum.cpp bignum.hpp \
			  compat/sys/time.h compat/getopt/getopt.h \
			  crc32.c \
			  TCMiner.cpp pools.cpp util.cpp bench.cpp \
			  api.cpp hashlog.cpp stats.cpp sysinfos.cpp \
			  equi/equi-stratum.cpp verus/verusscan.cpp  \
			  verus/haraka_portable.c verus/haraka.c verus/verus_clhash_portable.cpp



if HAVE_WINDOWS
TCMiner_SOURCES += compat/winansi.c
endif

TCMiner_LDFLAGS  = $(PTHREAD_FLAGS)
TCMiner_LDADD    = @LIBCURL@ @JANSSON_LIBS@ @PTHREAD_LIBS@ @WS2_LIBS@ @OPENMP_CFLAGS@ @LIBS@ 
TCMiner_CPPFLAGS = @LIBCURL_CPPFLAGS@ @OPENMP_CFLAGS@ $(CPPFLAGS) $(PTHREAD_FLAGS) -march=armv8-a+crypto -flax-vector-conversions -fno-strict-aliasing $(JANSSON_INCLUDES) $(DEF_INCLUDES) -O3

if HAVE_OSX
TCMiner_CPPFLAGS += -I/usr/local/llvm/lib/clang/4.0.0/include
TCMiner_LDFLAGS += -L/usr/local/llvm/lib
TCMiner_LDADD += -lomp
endif





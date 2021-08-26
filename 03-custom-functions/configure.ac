# GKA: Help! I don't know how to specify that all sources
#      are present in the src/ directory...

# Must init the autoconf setup
# The first parameter is project name
# second is version number
# third is bug report address
AC_INIT([hello], [1.0])

#AC_PREREQ([2.69])
#AC_INIT([FULL-PACKAGE-NAME], [VERSION], [BUG-REPORT-ADDRESS])

# Safety checks in case user overwritten --srcdir
#AC_CONFIG_SRCDIR([hello.c])
AC_CONFIG_SRCDIR([src/hello.c])
AC_CONFIG_SRCDIR([src/blob.F90])

#AC_CONFIG_HEADERS([config.h])

# Store the auxiliary build tools (e.g., install-sh, config.sub, config.guess)
# in this dir (build-aux)
AC_CONFIG_AUX_DIR([build-aux])

# Init automake, and specify this program use relaxed structures.
# i.e. this program doesn't follow the gnu coding standards, and doesn't have
# ChangeLog, COPYING, AUTHORS, INSTALL, README etc. files.
AM_INIT_AUTOMAKE([-Wall -Werror foreign])

# Check for C compiler
AC_PROG_CC
AC_PROG_CXX
AC_PROG_FC
AC_PROG_INSTALL
AC_PROG_MKDIR_P
# We can add more checks in this section

MY_HELLO_FUNCTION
MY_HOSTNAME_LOOKUP

# Tells automake to create a Makefile
# See https://www.gnu.org/software/automake/manual/html_node/Requirements.html
AC_CONFIG_FILES([Makefile src/Makefile])

# Generate the output
AC_OUTPUT

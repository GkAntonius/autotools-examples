# Declare the directory containing custom functions
AC_CONFIG_MACRO_DIRS([m4])

# Init the autoconf setup
AC_INIT([alice], [1.0])

# Autoconf needs to know about one source file
AC_CONFIG_SRCDIR([src/alice.F90])
AC_CONFIG_AUX_DIR([build-aux])
AM_INIT_AUTOMAKE([-Wall -Werror foreign])

# Check for C compiler
AC_PROG_CC
AC_PROG_CXX
AC_PROG_FC
AC_PROG_INSTALL
AC_PROG_MKDIR_P

# Add --with-wonderland option
MY_WONDERLAND_INIT

# Tells automake to create a Makefile
AC_CONFIG_FILES([Makefile src/Makefile])

# Generate the output
AC_OUTPUT

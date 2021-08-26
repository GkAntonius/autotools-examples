
AC_DEFUN([MY_HOSTNAME_LOOKUP], [
    AC_MSG_CHECKING([what is the hostname])
    hostname_found=$(hostname -s)
    AC_MSG_RESULT([${hostname_found}])
])

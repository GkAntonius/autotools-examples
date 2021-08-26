
AC_DEFUN([MY_HELLO_FUNCTION], [
    echo "\nI just wanted to say Hello world!\n"
])


AC_DEFUN([MY_HOSTNAME_LOOKUP], [
    AC_MSG_CHECKING([what is the hostname])
    hostname_found=$(hostname -s)
    AC_MSG_RESULT([${hostname_found}])
])


AC_DEFUN([TEST_FORTRAN_PROGRAM], [
    AC_MSG_CHECKING([whether we can compile a fortran code])
    AC_LANG_PUSH([Fortran])
    AC_LANG_CONFTEST([[
        program main
            write(*,*) 'Hello world'
        end program
    ]])
    AC_LANG_POP([Fortran])
    AC_MSG_RESULT([done])
])

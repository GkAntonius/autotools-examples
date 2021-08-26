
AC_DEFUN([MY_HELLO_WORLD], [
    echo "\nI just wanted to say Hello world!\n"
])


AC_DEFUN([MY_TEST_FORTRAN], [
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

AC_DEFUN([MY_SECTION_BAR], [
    echo "\n# ======================================================== #\n"
])


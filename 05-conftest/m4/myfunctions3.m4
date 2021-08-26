
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

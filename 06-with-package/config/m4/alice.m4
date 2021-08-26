
AC_DEFUN([GKA_ALICE_INIT], [
  gka_alice_flag="unset"
  AC_ARG_WITH([alice],
    [AS_HELP_STRING([--with-alice],
        [Ask Alice to join the project.])],
    [ if test "${withval}" = "no" -o "${withval}" = "yes"; then
        gka_alice_flag="${withval}"

        if test "${withval}" = "no"; then
            AC_MSG_WARN([Alice will be disapointed...])
        fi

        if test "${withval}" = "yes"; then
            AC_MSG_NOTICE([Alice is thrilled to join the compilation!])
        fi

      else

        gka_alice_flag="unknown"
        AC_MSG_ERROR([invalid Alice configuration])

      fi],
    [
        AC_MSG_WARN([You did not specify whether you wanted Alice to join the compilation...
                     She might follow you from afar.])
    ])
])  # GKA_ALICE_INIT


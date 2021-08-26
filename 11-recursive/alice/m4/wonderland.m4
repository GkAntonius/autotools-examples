
# MY_WONDERLAND_INIT
# 
# Allow to specify where to find libwonderland with the flag --with-wonderland.
#
AC_DEFUN([MY_WONDERLAND_INIT],
[
MY_SECTION_BAR

gka_wonderland_flag="unset"
gka_wonderland_dir="/usr"
AC_ARG_WITH([wonderland], [AS_HELP_STRING([--with-wonderland],[Allow Alice to enter Wonderland.])],
  [
  if test "${withval}" = "no" -o "${withval}" = "yes"; then

    gka_wonderland_flag="${withval}"

    if test "${withval}" = "no"; then
        AC_MSG_WARN([Alice will be disapointed...])
    fi

    if test "${withval}" = "yes"; then
        AC_MSG_NOTICE([Looking for Wonderland...])
    fi

  else

    gka_wonderland_flag="yes"
    gka_wonderland_dir=${withval}

  fi
  if test "${gka_wonderland_flag}" = "yes"; then

    SAVE_LIBS="$LIBS"
    LIBS="$SAVE_LIBS -lwonderland"

    if test "${gka_wonderland_dir}"; then

      AC_MSG_NOTICE([Okay, let's find Wonderland...])

      SAVE_LDFLAGS="$LDFLAGS"
      LDFLAGS="$SAVE_LDFLAGS -L${gka_wonderland_dir}/lib"

      SAVE_CPPFLAGS="$CPPFLAGS"
      CPPFLAGS="$SAVE_CPPFLAGS -I${gka_wonderland_dir}/include"

    fi
    MY_WONDERLAND_CHECK()

  fi

  ],
  [
      AC_MSG_WARN([Wonderland is unset.])
      gka_wonderland_flag="no"
  ])
MY_SECTION_BAR
])# MY_WONDERLAND_INIT



# MY_WONDERLAND_CHECK
# 
# Check for usability of the wonderland library.
#
AC_DEFUN([MY_WONDERLAND_CHECK],
[
    AC_LANG_PUSH([Fortran])
    AC_CHECK_LIB([wonderland], [wonderland_test],
    [
        AC_MSG_NOTICE([Wonderland has been found.])

        gka_wonderland_flag="yes"

        AC_SUBST(LDFLAGS, $LDFLAGS)
        AC_SUBST(CPPFLAGS, $CPPFLAGS)
        AC_SUBST(LIBS, $LIBS)
        AC_DEFINE(HAVE_WONDERLAND)
    ],
    [
        gka_wonderland_flag="no"
        AC_MSG_FAILURE([Wonderland not found or not working.])
    ])
    AC_LANG_POP()
])# MY_WONDERLAND_CHECK

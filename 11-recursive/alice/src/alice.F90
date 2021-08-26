program alice

#ifdef HAVE_WONDERLAND
    use wonderland
    use mad_hatter
#endif

    integer :: error

    write(*,*) 'Alice sees a rabit.'

#ifdef HAVE_WONDERLAND

    call wonderland_enter(error)
    call mad_hatter_meet(error)
    call mad_hatter_leave(error)
    call wonderland_exit(error)

#else

    write(*,*) 'Nothing exciting happens.'

#endif

    write(*,*) 'Alice is back.'

end program

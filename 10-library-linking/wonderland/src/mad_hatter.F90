
module mad_hatter

contains

subroutine mad_hatter_meet(error)

    integer, intent(out) :: error
    
    write (*,*) "I am the hatter!"

    error = 0

end subroutine



subroutine mad_hatter_leave(error)

    integer, intent(out) :: error

    write (*,*) "Have I gone mad?"

    error = 0

end subroutine

end module

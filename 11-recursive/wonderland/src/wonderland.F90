module wonderland

contains

subroutine wonderland_init()
end subroutine

subroutine wonderland_enter(error)

    integer, intent(out) :: error
    
    write (*,*) "Entering Wonderland..."

    error = 0

end subroutine



subroutine wonderland_exit(error)

    integer, intent(out) :: error
    
    write (*,*) "Leaving Wonderland."

    error = 0

end subroutine

end module

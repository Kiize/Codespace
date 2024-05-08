PROGRAM ANTS
    IMPLICIT NONE

    Real*8 :: x, mu
    Integer :: n_end, n

    open(1, FILE="ants.dat")

    x = 0.75
    mu = 0.4
    n_end = 100

    do n = 1, n_end, 1
        x = mu * x * (1. - x)
        write (1, *) x, n
    end do

    close(1)
END PROGRAM ANTS
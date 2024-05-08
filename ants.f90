PROGRAM ANTS
    IMPLICIT NONE

    Real*8 :: x, mu
    Integer :: n_end, n

    open(1, FILE="ants_mu33.dat")

    x = 0.75
    mu = 3.3
    n_end = 10000

    do n = 1, n_end, 1
        x = mu * x * (1. - x)
        write (1, *) x, n
    end do

    close(1)
END PROGRAM ANTS
program chaos
    implicit none

    real*8 :: mu_min, mu_max, mu, x
    integer :: n, i_mu

    mu_min = 1.0
    mu_max = 4.0
    
    open(1, file="chaos.dat")

    do i_mu = 1, 1000 - 1
        mu = mu_min + i_mu * (mu_max - mu_min) / 1000.0d0
        x = 0.75

        do n = 0, 200
            x = mu * x * (1.0d0 - x)
        end do

        do n = 201, 1001
            x = mu * x * (1.0d0 - x)
            write (1, *) x, mu
        end do

    end do
end program chaos
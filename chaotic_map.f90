program chaos
    implicit none

    real*8 :: mu_min, mu_max, mu, x
    real*8 :: x_min, x_max
    integer :: n, i_mu, ix

    mu_min = 0.5d0
    mu_max = 3.95d0
    x_min = 0.05d0
    x_max = 0.95d0
    
    open(1, file="chaos.dat")

    do i_mu = 1, 1000 - 1
        mu = mu_min + i_mu * (mu_max - mu_min) / 1000.0d0
        do ix = 1, 1000 - 1
            x = x_min + ix * (x_max - x_min) / 1000.0d0

            do n = 0, 300
                call map(x, mu)
            end do

            write (1, *) x, mu
        enddo
    end do
end program chaos

subroutine map(x, mu)
    implicit none
    real*8 :: x, mu, pi
    pi = 4.d0 * datan(1.d0)

!    x = mu * x * (1.0d0 - x)   !logistic
!    x = mu * (1.0d0 - (2.0d0 * x - 1.0d0)**4)   !quartic
!    x = mu * (1.d0 - 2.d0 * abs(x - 1.d0/2.d0))    !tent   
!    x = x * dexp(mu * (1.d0 - x))   !ecology
    x = modulo(x + mu/(2.d0 * pi) * dsin(2.d0 * pi * x), 1.d0)  !circle map
end subroutine
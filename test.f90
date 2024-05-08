Real*8 Function c(r)
    IMPLICIT NONE
    Real*8 :: r
    Real*8 :: PI = 3.14159265358979323846

    c = 2.0 * r * PI
end

Real*8 Function a(r)
    IMPLICIT NONE
    Real*8 :: r
    Real*8 :: PI = 3.14159265358979323846

    a = r ** 2 * PI
end

PROGRAM AREA_CIRC
    IMPLICIT NONE
    Real*8 :: radius, circ, area, c, a
    Real*8 :: PI = 3.14159265358979323846

    print *, "Enter the radius: "
    read *, radius

    circ = c(radius)
    area = a(radius)

    print *, "The radius is ", radius
    print *, "The circumference is ", circ
    print *, "While the area is", area

END PROGRAM AREA_CIRC
PROGRAM AREA_CIRC
    IMPLICIT NONE
    Real*8 :: radius, circ, area
    Real*8 :: PI = 3.14159265358979323846

    print *, "Enter the radius: "
    read *, radius

    circ = 2.0 * PI * radius
    area = radius * radius * PI

    print *, "The circumference is ", circ
    print *, "While the area is", area

END PROGRAM AREA_CIRC
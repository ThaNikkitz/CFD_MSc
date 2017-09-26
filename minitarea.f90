program dif_centrada
implicit none

integer :: i, j, n
double precision :: dt, dx
double precision, parameter :: T1 = 10., delta_T1 = 5., ro_C1 = 2.0d6, l1 = 0.45, l = 0.5, T_0 = 20.
double precision, parameter :: lamba1 = 2., lambda2 = 0.1, ro_C2 = 1.0d6, h = 4., l2 = 0.05
double precision, parameter :: PI = 3.14159265358979324



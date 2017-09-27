program dif_centrada
implicit none

integer :: i, j, n
integer, parameter :: nt = 24*20*10
double precision :: dt, dx, t
double precision, allocatable :: Temp(:), Temp_n(:)
double precision, parameter :: T1 = 10., delta_T1 = 5., ro_C1 = 2.0d6, l1 = 0.45, l = 0.5, T_0 = 20.
double precision, parameter :: lamba1 = 2., lambda2 = 0.1, ro_C2 = 1.0d6, h = 4., l2 = 0.05
double precision, parameter :: PI = 3.14159265358979324

write(*,*) 'Escriba numero de elementos "n"'
read(*,*) n

allocate Temp(n), Temp_n(n)

t = 0
dt = 20/nt
dx = 0.5/n

Do i = 1, nt
	Temp(1) = T1 + delta_T1*sin(2*PI*t/24)
	Do j = 2, n-1
		Temp_n(j) = Temp(j) + (lambda1*dt/ro_C1*(dx**2))*(Temp(j+1)-2*Temp(j)+Temp(j-1))
	End Do
	t = t+dt
End Do

write(*,*) Temp

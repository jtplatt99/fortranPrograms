!-------------------------------------------------
! This program will convert a temperature
! given by the user as a Farenheit integer
! into a both degrees Celsius and degrees
! Farenheit as reals
!
! Written by Jonathan Platt Section 1 10/26/2017
! Updated 10/30/2017
!-------------------------------------------------
PROGRAM prog01
  IMPLICIT NONE
  INTEGER::FarenheitInt
  REAL::FarenheitReal,CelsiusReal

  PRINT*,"Enter your temperature in °F as an INTEGER"
  READ*,FarenheitInt
  FarenheitReal=REAL(FarenheitInt)

  ! Below is the given formula to convert from farenheit to celcius 
  CelsiusReal=(5./9. * (FarenheitReal - 32.))
  PRINT*,FarenheitReal,"°F is equal to",CelsiusReal,"°C"
END PROGRAM prog01

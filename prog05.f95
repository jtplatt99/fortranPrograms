!-------------------------------------------------
! This program will convert take a user given
! integer speed (mph) and return whether the user
! is speeding or not 
!
! Written by Jonathan Platt Section 1 11/12/2017
!-------------------------------------------------
PROGRAM prog05
  IMPLICIT NONE
  INTEGER::speed,speedLimit=55
  WRITE(*,*) "Please enter your speed as an INTEGER in miles per hour:"
  READ*,speed
  IF (speed<speedLimit) THEN
    WRITE(*,*) "With a speed of",speed,"mph this vehicle is not speeding."
  ELSE IF (speed>speedLimit) THEN
    WRITE(*,*) "With a speed of",speed,"mph this vehicle is speeding."
  ELSE IF (speed==speedLimit) THEN
    WRITE(*,*) "With a speed of",speed,"mph this vehicle is really pushing it."
  ELSE 
    PRINT*,"SOMETHING WENT WRONG"
  END IF
END PROGRAM prog05

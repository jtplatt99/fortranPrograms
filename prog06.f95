!----------------------------------------
! This program reads in a character and
! a real number and displays relavent info
! based on the number and character entered
!
! Created by Jonathan Platt Section 1 11/12/17
!----------------------------------------
PROGRAM prog06
  IMPLICIT NONE
  CHAR::mode
  REAL::inputValue
  DO
    WRITE(*,*) "(Enter q to quit)"
    WRITE(*,*) "Please enter an 's' to request money, 't' to store last night's temperature:"
    READ*,mode
    IF mode="s" .OR. mode="S" THEN
      WRITE(*,*) "Please enter the amount (USD) you would like to request:"
      READ*,inputValue
      WRITE(*,*) "Send money! I need $",inputValue
      EXIT
    ELSE IF mode="t" .OR. mode="T" THEN
      WRITE(*,*) "Please enter the last night's temperature in degrees F:"
      READ*,inputValue
      WRITE(*,*) "The temperature last night was",inputValue,"degrees F"
      EXIT
    ELSE IF mode="q" .OR. mode="Q" THEN
      WRITE(*,*) "You quit"
      EXIT
    ELSE
      WRITE,"Try again, you entered an invalid character"
    END IF
  END DO
END PROGRAM prog06

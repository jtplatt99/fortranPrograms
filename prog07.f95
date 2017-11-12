!------------------------------------
! This program reads in three INTEGERS
! and uses magic (math) in order to
! determine the largest and smallest
! of the entered numbers
!
! Created by Jonathan Platt Section 1 11/12/17
!------------------------------------
PROGRAM prog07
  IMPLICIT NONE
  INTEGER::firstNumber,secondNumber,thirdNumber
  WRITE(*,*) "Please enter your three favorite INTEGERS:"
  READ*,firstNumber,secondNumber,thirdNumber
  IF (firstNumber >= secondNumber .AND. firstNumber >= thirdNumber) THEN
    WRITE(*,*) firstNumber,"is the largest number and"
    IF (secondNumber <= thirdNumber) THEN
      WRITE(*,*) secondNumber,"is the smallest number"
    ELSE
      WRITE(*,*) thirdNumber,"is the smallest number"
    END IF
  ELSE IF (secondNumber >= firstNumber .AND. secondNumber >= thirdNumber) THEN
    WRITE(*,*) secondNumber,"is the largest number and"
    IF (firstNumber <= thirdNumber) THEN
      WRITE(*,*) firstNumber,"is the smallest number"
    ELSE
      WRITE(*,*) thirdNumber,"is the smallest number"
    END IF
  ELSE IF (thirdNumber >= firstNumber .AND. thirdNumber >= secondNumber) THEN
    WRITE(*,*) thirdNumber,"is the largest number and"
    IF (firstNumber <= secondNumber) THEN
      WRITE(*,*) firstNumber,"is the smallest number"
    ELSE
      WRITE(*,*) secondNumber,"is the smallest number"
    END IF
  ELSE
    PRINT*,"SOMETHING WENT WRONG"
  END IF
END PROGRAM prog07

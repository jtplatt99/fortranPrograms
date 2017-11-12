!-----------------------------------
! This program classifies a student
! as a freshman, sophomore, junior
! or senior based on the number of
! credits they have recieved so far
! Note credits must be entered as an
! INTEGER
!
! Created by Jonathan Platt Section 1 11/12/17
!-----------------------------------
PROGRAM prog08
  IMPLICIT NONE
  INTEGER::credits
  INTEGER,PARAMETER::freshman=0, sophomore=32, junior=64, senior=96
  WRITE(*,*) "Enter number of credit hours completed as an INTEGER:"
  READ*,credits
  Class: SELECT CASE (credits)
    CASE(:freshman-1)
      PRINT*,"ERROR: negative credit amount entered: (",credits,")"
    CASE(freshman : sophomore-1)
      WRITE(*,*) "With",credits,"credits this student is a Freshman."
    CASE(sophomore : junior-1)
      WRITE(*,*) "With",credits,"credits this student is a Sophomore."
    CASE(junior : senior-1)
      WRITE(*,*) "With",credits,"credits this student is a Junior."
    CASE(senior:)
      WRITE(*,*) "With",credits,"credits this student is a Senior."
    CASE DEFAULT
      PRINT*,"ERROR: invalid credit amount entered: (",credits,")"  
  END SELECT Class
  PRINT*,"Have a nice day"!
END PROGRAM prog08

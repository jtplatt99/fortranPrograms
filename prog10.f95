!-------------------------------------
! This program takes in a collection
! of exam scores and counts and
! categorizes them based on performance
! and takes in a negative value to give
! the end of data signal
!
! Written by Jonathan Platt Section 1 11/14/17
!-------------------------------------
PROGRAM prog10
  IMPLICIT NONE

  INTEGER::input,totalScores=0,greatScores=0,goodScores=0,badScores=0,summ=0
  INTEGER,PARAMETER::great=100,good=89,bad=59 

  DO
    WRITE(*,1) "Enter a score from 0 - ",great," (enter -1 to exit)"
1   FORMAT(A,I3,A)
    READ*,input

    SELECT CASE(input)
      CASE(-1)
        EXIT
      CASE(0:bad)
        badScores=badScores+1
      CASE(bad+1:good)
        goodScores=goodScores+1
      CASE(good+1:great)
        greatScores=greatScores+1
      CASE DEFAULT 
        WRITE(*,*) "INVALID SCORE: Please enter a score within the range or -1 to exit"
        CYCLE
    END SELECT

    totalScores=totalScores+1
    summ=summ+input
  END DO

  WRITE(*,1) "Out of ",totalScores," total scores,"
  WRITE(*,*)  REAL(summ)/REAL(totalScores),"was the average,"
  WRITE(*,2)  badScores," were unsatisfactory,"
  WRITE(*,2)  goodScores," were satisfactory, and"
  WRITE(*,2)  greatScores," were outstanding."
2 FORMAT(I3,A)
END PROGRAM prog10

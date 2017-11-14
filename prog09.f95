!----------------------------------
! This program will prompt the user
! for the number data elements they
! want to enter, then finds the
! largest, smallest, and average of
! the data items.
!
! Written by Jonathan Platt Secion 1 11/14/17
!----------------------------------
PROGRAM prog09
  IMPLICIT NONE

1 FORMAT(I5,A) 

  INTEGER::dataItems,summ,input,dummyMin,dummyMax,iterator
  WRITE(*,*) "Please enter the INTEGER number of data items in your set:"
  READ*,dataItems
  WRITE(*,*) "Please enter the first INTEGER in your data set:"
  READ*,input
  summ = input
  dummyMin = input
  dummyMax = input

  DO iterator=2,dataItems
    WRITE(*,1) dataItems-iterator+1," items left to enter."
    IF (iterator<dataItems) WRITE(*,*) "Please enter the next INTEGER in your data set:"
    IF (iterator==dataItems) WRITE(*,*) "Please enter the last INTEGER in your data set:"
    READ*,input
    summ = summ + input
    IF (input < dummyMin) dummyMin=input 
    IF (input > dummyMax) dummyMax=input 
  END DO 

  WRITE(*,1) dummyMin," is the minimum value of the set."
  WRITE(*,1) dummyMax," is the maximum value of the set."
  WRITE(*,*) REAL(summ)/REAL(dataItems)," is the average value of the set."
END PROGRAM prog09

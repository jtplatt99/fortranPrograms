!------------------------------------------------
! This program takes two integers as inputs
! and outputs their sum, difference and, product
! as integers and their quotient as a real. For
! subtraction and division the first number (x)
! will be operated on by the second (y)
! ie (x-y) and (x/y)
!
! Written by Jonathan Platt Section 1 on 10/26/2017
! Updated 10/30/2017
!------------------------------------------------
PROGRAM prog02
  IMPLICIT NONE
  INTEGER::x,y

  PRINT*,"Please enter two integers (separated by a space) you would like to operate on:"
  READ*,x,y 
  PRINT*,"The sum of",x,"and",y,"is",(x+y)   
  PRINT*,"The difference of",x,"and",y,"is",(x-y)   
  PRINT*,"The product of",x,"and",y,"is",(x*y)   
  PRINT*,"The quotient of",x,"and",y,"is",(real(x)/real(y))
END PROGRAM prog02   

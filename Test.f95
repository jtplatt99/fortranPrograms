!
! This is a test program to read in a
! value for Number1 and Number2, add them together 
! and print out the result.
!
! Example:  Written by Darren Evans-Young Section 1 10/25/2017
!
PROGRAM Test

  INTEGER :: Number1,Number2,Sum
  
  PRINT*,'Enter two integers separated by a space:'
  READ*, Number1,Number2
  Sum = Number1 + Number2
  PRINT*,'The sum of ',Number1,' and ',Number2,' is: ',Sum
  
END PROGRAM Test

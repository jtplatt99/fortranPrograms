!------------------------------------------------
! This programs queries the user for a
! real input in pounds and outputs the
! mass in kilograms and grams as reals
!
! Written by Jonathan Platt Section 1 10/26/2017
! Updated 10/30/2017
!------------------------------------------------
PROGRAM prog03
  IMPLICIT NONE
  REAL::lbs,g,kg

  PRINT*,"Please enter your mass in pounds as a REAL number (include a decimal):"
  READ*,lbs
  ! Given formula to convert pounds to grams
  g=lbs*453.59237
  ! Formula to convert grams to kilograms
  kg=g/1000.
  PRINT*,lbs,"pounds is equal to,",kg,"kilograms or",g,"grams."
END PROGRAM prog03 

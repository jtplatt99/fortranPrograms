!---------------------------------------------
! This program takes in two real values:
! the size of a cars gas tank and its fuel
! efficiency (in gallons and miles per
! gallon respectively) and outputs the
! the distance the car can travel on a single
! tank of fuel as a real number
!
! Written by Jonathan Platt Section 1 10/26/2017
! Updated 10/30/2017
!---------------------------------------------
PROGRAM prog04
  IMPLICIT NONE
  REAL::mpg,gallons,distance

  PRINT*,"Please enter your car's fuel effiency (in mpg) and tank size (in gallons) as real numbers separated by a space:"
  READ*,mpg,gallons
  distance=mpg*gallons
  PRINT*,"A car with",mpg,"mpg and",gallons,"gallons of fuel can travel about",distance,"miles."
END PROGRAM prog04

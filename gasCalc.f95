PROGRAM gasCalc
!-------------------------
! This program calculates
! the a gas bill based on
! the amount of gas consumed
! in cubic meters entered
! as a four digit integer
!-------------------------
  IMPLICIT NONE

  INTEGER::meterReading
  REAL::amountOwed
  PRINT*,"Enter the meter reading as a four digit INTEGER"
  READ*,meterReading

  IF(meterReading <= 70) THEN
    amountOwed=5.00 ! $5 is the base gas cost
  ELSEIF(meterReading <= 170) THEN
    amountOwed = 5. + REAL(meterReading-70)*.05
  ELSEIF(meterReading <= 400) THEN
    amountOwed = 5. + 5. + REAL(meterReading-170)*.025
  ELSE
    amountOwed = 5. + 5. + 5.75 + REAL(meterReading-400)*.015
  ENDIF
  PRINT*,"Your consumption of:",meterReading,"cubic meters of gas means you owe $",amountOwed
END PROGRAM gasCalc

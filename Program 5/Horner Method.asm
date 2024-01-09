## CS 254   PROGRAMMING ASSIGNMENT #5 Horner's Method  
## 
## Compute 7x^4  + 2x^3  + 10x^2 - 3x + 17
## 
## Programmer: Erik MArrero
## Date:10/2/2019


## Program to calculate 7x^4  + 2x^3  + 10x^2 - 3x + 17
##
## Register Use:
##  $9   x
##  $10   result

        .text
        .globl  main

main:
        ori     $9,  $0, 0x1    # Put x into $9
	ori     $10, $0, 7      # Put 7 into $10 
	mult	$10, $9 	# lo  = 7x
	mflo	$10		# $10 = 7x
	addiu	$10, $10, 2	# $10 = 7x + 2
	mult 	$10, $9		# $lo = 7x^2 + 2x
	mflo 	$10		# $10 = 7x^2 + 2x
	addiu	$10, $10, 10	# $10 = 7x^2 + 2x + 10
	mult	$10, $9		# $lo = 7x^3 + 2x^2 + 10x
	mflo 	$10		# $10 = 7x^3 + 2x^2 + 10x
	addiu 	$10, $10 , -3	# $10 = 7x^3 + 2x^2 + 10x - 3 
	mult	$10, $9		# $lo = 7x^4 + 2x^3 + 10x^2 - 3x 
	mflo 	$10		# $10 = 7x^4 + 2x^3 + 10x^2 - 3x 
	addiu 	$10, $10, 17 	# $10 = 7x^4 + 2x^3 + 10x^2 - 3x + 17




## End of file
## CS 254  Program 6 
## 
## Compute (25xy - 10x - 6y + 28)/7
## 
## Programmer: Erik MArrero
## Date:10/13/2019
## Program to calculate (25xy - 10x - 6y + 28)/7



.text
.globl main


main:

	lui $10, 0x1000 #Loads base into reg 10
	lw $9, 0($10) #Loads x into reg 9

#Numorator

	
	
	ori $14, $0, 4 		#Multiplier register to 4
	multu $9, $14 		#Multiplies result of x by 4
	mflo $13 		#Stores result of 4x
	ori $14, $0, 5 		#Changes multiplier to 5
	subu $13, $13, $14 	#4x - 5
	mult 	$13, $9		#$lo = 4x^2 - 5x
	mflo 	$13		# $13 = 4x^2 -5x
	ori $14, $0, 3 		#Multiplier changed to 3
	addu $13, $13, $14 	# 4x^2-5x + 3

#Denominator 


	ori $11, $0, 2 		#Changes multiplier to 2
	subu $12, $9, $11 	#x - 2
	mult 	$12, $9		# $lo = x^2 - 2x
	mflo 	$12		# $12 = 4x^2 -5x
	ori $11, $0, 15 	#Multiplier changed to 15
	subu $12, $12, $11 	# x^2-2x - 15


## $15 -- error if 0 

# while  Denomonator == 0
#loop:    beq      $0,$12, error
  #       sll      $0,$0,0        #  branch delay

# finish
#done:    sll      $0,$0,0        # target for branch


	div $12,$13
	mflo $15 # $13 = quotient
	mfhi $16 # $8 = remainder

	sw $15, 4($10) #Stores result in answer

	.data
	x: .word 0


## End of file

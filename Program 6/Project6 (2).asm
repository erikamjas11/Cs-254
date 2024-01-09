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


	lw $11, 4($10) #Loads y into reg 11

	ori $14, $0, 25 #Multiplier register init

	multu $9, $11
	mflo $13 #Result of xy



	multu $13, $14 #Multiplies result of xy by 25
	mflo $13 #Stores result of 25xy


	ori $14, $0, 10 #Changes multiplier to 12

	multu $9, $14 #10x
	mflo $12 #Stores result in reg 12

	subu $13, $13, $12 #25xy - 10x

	ori $14, $0, 6 #Multiplier changed to 6

	multu $11, $14 #6y
	mflo $12 #6y stored in reg 12

	subu $13, $13, $12 #25xy - 10x - 6y
	ori $14, $0, 28 #Multiplier changed to 28

	addu $13, $13, $14 #17xy - 12x - 6y + 28
	ori $14, $0, 7 #Multiplier changed to 7
	div $13,$14
	mflo $13 # $13 = quotient
	mfhi $8 # $8 = remainder

	sw $13, 4($10) #Stores result in answer



	.data
	x: .word 1
	y: .word 5


## End of file

## CS 254  Program 4B   
## 
## Compute 23*x 
## 
## Programmer: Erik MArrero
## Date:9/25/2019


## Program to calculate 23 * x
##
## Register Use:
##  $7   x
##  $10   result

        .text
        .globl  main

main:
        ori      $7,  $0,   12       # put 1 into $7
	sll      $11, $7,   4        # $11 = 16x
	sll      $12, $7,   2        # $12 = 4x
	sll      $13, $7,   1        # $13 = 2x
	addu     $8,  $11, $12       # $8 = 20x
	addu     $9,  $8,  $13       # $9 = 22x
	addu     $10, $9, $7         # $10 = 23x

## End of file
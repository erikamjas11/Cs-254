## CS 254 Program 9 Fall 2019 
## 
## Celsius to Fahrenheit  
## 
## Programmer: Erik Marrero
## Date:12/9/2019
## 
## Register use table: 
#####################################################################################################


.data
   inMsg:   .asciiz "Enter Celsius: "
   outMsg: .asciiz "Fahrenheit: "
   hotMsg: .asciiz "\nToo Hot!"
   eighty: .float 80
   nine:   .float 9
   five:   .float 5
   thirtytwo: .float 32
########################################################################################################
.text
   li   $v0, 4
   la   $a0, inMsg
   syscall
  
   li    $v0, 6
   syscall
   mov.s    $f1, $f0
  
  
   l.s    $f2, nine
   mul.s   $f1, $f1, $f2
   l.s   $f2, five
   div.s   $f1, $f1, $f2
   l.s   $f2, thirtytwo
   add.s   $f1, $f1, $f2
  
  
   #display the result
  
   li   $v0, 4
   la   $a0, outMsg
   syscall
  
   li   $v0, 2
   mov.s   $f12, $f1
   syscall
  
   #compare and print if hot
   l.s     $f2, eighty
   c.le.s    $f1, $f2
   bc1t   exit
  
   #print hot
   li   $v0, 4
   la   $a0, hotMsg
   syscall
  
exit:
   li $v0, 10
   syscall
output



----
Enter Celsius: 35.67
Fahrenheit: 96.20599
Too Hot!
-- program is finished running --
Enter Celsius: 22.5
Fahrenheit: 72.5
-- program is finished running --
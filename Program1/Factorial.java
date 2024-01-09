/*  CS 254 Program 1
|   Author: Erik Marrero
|   Date: 9/7/2019
| 
|   Compute N factorial for N=1 to 50. | 
*/ 
#As N increases the output increases, until N reaches 17 then the output randomly turns to a negative. 34 to 50 has an output of 0. I believe the reason for this is because there is to much data trying to be put into the stack. Which creates a stack overflow and causes the data malfunction in the program.


public class Factorial
{
    public static void main(String [] args){
    
        
        int Lowest=0; 
        int Highest=50; 
        int value=1;

System.out.println("N          N! ");
System.out.println("-------+-------");
                
                
                while (Lowest<= Highest){
                if(Lowest==0)
                    value = value * (Lowest+1);
                else
                    value=value*Lowest;
                Lowest++;
                
                System.out.println((Lowest-1)+  "           "   +value);
                    
                }
         
     }
         
}



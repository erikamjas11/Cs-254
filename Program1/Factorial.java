/*  CS 254 Program 1
|   Author: Erik Marrero
|   Date: 9/7/2019
| 
|   Compute N factorial for N=1 to 50. | 
*/ 


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



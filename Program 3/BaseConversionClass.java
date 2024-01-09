import java.util.Scanner;
public class BaseConversionClass {

	public static void main(String[] args) {
		
		Scanner sc=new Scanner(System.in);
		System.out.print("Enter an integer --> ");
		
		int n=sc.nextInt();
		
		int num=n;
		
		String s="";
		
		while(num>0){
		
		s=s+Integer.toString(num%5);
		
		num=num/5;
		
		sc.close();
		}
		
		
		String Rev="";
		
		for(int i=s.length()-1;i>=0;i--){
		
		Rev=Rev+s.charAt(i);
		}
		
		
		
		int base5=Integer.valueOf(Rev);
		
		System.out.println("Base 5 representation: "+ base5);
		
		}
	
}




package temperature;

import java.util.Scanner;

public class Temperature {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner keyboard=new Scanner(System.in);
		System.out.println("Enter Fahrenheit temperature");
		double F=keyboard.nextDouble();
		double C=(F-32)*5/9;
		double K=C+273.15;

		System.out.println("Farenheit Temperature: " + F);
		System.out.println("Celsius Temperature: " + C);
		System.out.println("Kelvin Temperature " + K);                 

	}

}



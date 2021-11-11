package lista1;

import java.util.*;

public class exercicio4_intro 
{
	public static void main(String[] args) 
	{
		Scanner ler = new Scanner(System.in);
		
		int a=0, b=0, c=0, d=0, s=0, r=0;
		
		System.out.println("Digite um valor inteiro e positivo de A: ");
		a = ler.nextInt();
		System.out.println("Digite um valor inteiro e positivo de B: ");
		b = ler.nextInt();
		System.out.println("Digite um valor inteiro e positivo de C: ");
		c = ler.nextInt();
		
		r=(a+b)*(a+b);
		s=(b+c)*(b+c);
		d=(r+s)/2;
				
		System.out.println("A resultante da expressão é: "+d);
		ler.close();
	}
}
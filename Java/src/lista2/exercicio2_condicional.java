package lista2;
import java.util.*;

public class exercicio2_condicional 
{
	public static void main(String[] args) 
	{
		Scanner ler = new Scanner(System.in);
		int a,b,c,pri=0,seg=0,ter=0;
		
		System.out.printf("Entre com o valor de a:");
		a = ler.nextInt();
		System.out.printf("Entre com o valor de b:");
		b = ler.nextInt();
		System.out.printf("Entre com o valor de c:");
		c = ler.nextInt();
		
		//verificar o A
		if(a>b && a>c) {
			pri = a;
		}else if(a<b && a<c) {
			ter = a;
		}else {
			seg = a;
		}
		
		//verificar o B
		if(b>a && b>c) {
			pri = b;
		}else if(b<a && b<c) {
			ter = b;
		}else {
			seg = b;
		}
		
		//verificar o C
		if(c>a && c>b) {
			pri = c;
		}else if(c<a && c<b) {
			ter = c;
		}else {
			seg = c;
		}
		
		System.out.printf("\nOs números inseridos em ordem crescente são: %d %d %d",ter,seg,pri);
		ler.close();
	}
}

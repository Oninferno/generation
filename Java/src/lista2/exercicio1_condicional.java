package lista2;
import java.util.*;

public class exercicio1_condicional 
{
	public static void main(String[] args) 
	{
		Scanner ler = new Scanner(System.in);
		int a,b,c,maior = 0;
		
		System.out.printf("Entre com o valor de a:");
		a = ler.nextInt();
		System.out.printf("Entre com o valor de b:");
		b = ler.nextInt();
		System.out.printf("Entre com o valor de c:");
		c = ler.nextInt();
		
		if(a>b && a>c) {
			maior = a;
		}else if(b>a && b>c) {
			maior = b;
		}else if(c>a && c>b) {
			maior = c;
		}
		
		System.out.printf("O maior numero é o %d",maior);
		ler.close();
	}
}

package lista1;
import java.util.Scanner;

public class exercicio7_intro {
	public static void main(String[] args) {
		Scanner ler = new Scanner(System.in);
		
		int a, b, c, d, e, f, x, y;
		
		System.out.printf("\nDigite o valor de a: ");
		a = ler.nextInt();
		System.out.printf("\nDigite o valor de b: ");
		b = ler.nextInt();
		System.out.printf("\nDigite o valor de c: ");
		c = ler.nextInt();
		System.out.printf("\nDigite o valor de d: ");
		d = ler.nextInt();
		System.out.printf("\nDigite o valor de e: ");
		e = ler.nextInt();
		System.out.printf("\nDigite o valor de f: ");
		f = ler.nextInt();
		
		x=((c*e)-(b*f))/((a*e)-(b*d));
		y=((a*f)-(c*d))/((a*e)-(b*d));
		
		System.out.printf("\nO valor de x é: %d",x);
		System.out.printf("\nO valor de y é: %d",y);
	}
}

package lista2;
import java.util.*;

public class exercicio4_condicional {	
	public static void main(String[] args) {
		Scanner ler = new Scanner(System.in);
		
		double num=0f,elev=2f;
		System.out.printf("Entre com um n�mero:");
		num = ler.nextDouble();
		
		if(num%2==0) {
			System.out.printf("Par");
			System.out.printf("\nA raiz quadrada desse n�mero �: %f",Math.sqrt(num));
		}else {
			System.out.printf("Impar");
			System.out.printf("\nEsse n�mero eleva ao quadrado �: %f",Math.pow(num, elev));
		}
	}
}


package lista3;
import java.util.*;

public class exercicio2_repeticaoFor {
	public static void main(String[] args) 
	{
		@SuppressWarnings("resource")
		Scanner ler = new Scanner(System.in);
		
		int num = 0, i, par=0, impar=0;
	
		
		for(i=1;i<11;i++) {
			System.out.printf("\nDigite o %dº número:",i);
			num = ler.nextInt();
			
			if(num%2==0) {
				par++;
			}else {
				impar++;
			}
		}

		System.out.printf("\nA quantidade de números pares: %d", par);
		System.out.printf("\nA quantidade de números impares: %d", impar);
		
		ler.close();
	}
}

package lista3;
import java.util.*;

public class exercicio5_repeticaoDoWhile {
	public static void main(String[] args) 
	{
		Scanner ler = new Scanner(System.in);
		
		int num,soma = 0;
		
		do {
			System.out.printf("Digite um n�mero: ");
			num = ler.nextInt();
			soma += num;
			
		}while(num != 0);
		
		
		System.out.printf("A soma dos n�meros digitados � igual a %d",soma);
		ler.close();
	}
}

package lista3;
import java.util.*;

public class exercicio6_repeticaoDoWhile {
	public static void main(String[] args) 
	{
		Scanner ler = new Scanner(System.in);
		
		int num,soma = 0, contador=0, media=0;
		
		do {
			System.out.printf("Digite um número: ");
			num = ler.nextInt();
			
			if(num%3==0) {
				soma += num;
				contador++;
			}
				
		}while(num != 0);
		
		media = soma/contador;
		
		System.out.printf("A media dos números digitados, multiplos de 3 é igual a %d",media);
		ler.close();
	}
}

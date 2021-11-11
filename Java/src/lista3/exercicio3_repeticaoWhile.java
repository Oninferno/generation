package lista3;
import java.util.*;

public class exercicio3_repeticaoWhile {
	public static void main(String[] args) 
	{
		Scanner ler = new Scanner(System.in);
		int idade, menor = 0, maior = 0;
		
		System.out.printf("Entre com a sua idade: ");
		idade = ler.nextInt();
		
		while(idade<99 && idade>0) {
			
			if(idade<21) {
				menor++;
			}else if(idade>50) {
				maior++;
			}
		
			System.out.printf("Entre com a sua idade: ");
			idade = ler.nextInt();
		}
		
		System.out.printf("\nQuantidade de pessoas com menos de 21 anos: %d", menor);
		System.out.printf("\nQuantidade de pessoas com mais de 50 anos: %d", maior);
		
		ler.close();
	}
}

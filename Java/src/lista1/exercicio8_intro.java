package lista1;
import java.util.Scanner;

public class exercicio8_intro {
	public static void main(String[] args) 
	{
		Scanner ler = new Scanner(System.in);
		
		int custoFabrica, custoDistribuidor = 28, impostos = 45, soma;
		
		System.out.printf("\nInforme o custo de fábrica ");
		custoFabrica = ler.nextInt();
		soma = custoFabrica + (custoDistribuidor*impostos/100);
		
		System.out.printf("\nO custo ao consumidor é de R$%d",soma);
		ler.close();
	}
}

package lista1;

import java.util.*;

public class exercicio1_intro {
	public static void main(String[] args) 
	{
		Scanner ler = new Scanner(System.in);
		int ano, mes, dia, calculo = 0;
		
		System.out.println("Por favor, informe quantos anos você tem de vida: ");
		ano = ler.nextInt();
		
		System.out.println("Por favor, informe quantos meses você tem de vida: ");
		mes = ler.nextInt();
		
		System.out.println("Por favor, informe quantos dias você tem de vida: ");
		dia = ler.nextInt();
		
		calculo = (mes*31)+(ano*365)+dia;
		System.out.printf("Você tem " + calculo + " dias de vida.");
	}
}
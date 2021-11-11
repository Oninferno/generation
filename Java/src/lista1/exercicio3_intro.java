package lista1;

import java.util.*;

public class exercicio3_intro 
{
	public static void main(String[] args) 
	{
		Scanner ler = new Scanner(System.in);
		int duracao,horas,minutos;
		
		System.out.println("Quantos segundos irá durar o evento?");
		duracao = ler.nextInt();
		
		horas = duracao/3600;
		minutos = duracao/60;
		
		System.out.printf("Então esse evento tem " + horas +"h " + minutos +"min " + duracao + "s");
		ler.close();
	}
}
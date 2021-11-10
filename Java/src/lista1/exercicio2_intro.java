package lista1;

import java.util.*;

public class exercicio2_intro 
{
	public static void main(String[] args) 
	{
		Scanner ler = new Scanner(System.in);
		
		int totalDias, ano, meses;
		
		System.out.println("Por favor, informe quantos dias totais de vida você tem: ");
		totalDias = ler.nextInt();
		ano = totalDias/365;
		meses = totalDias/12;
		
		System.out.printf("Você tem " +ano+ " anos " +meses+ " meses e " +totalDias+ " dias");
	}
}
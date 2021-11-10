package lista1;
import java.util.Scanner;

public class exercicio6_intro {
	public static void main(String[] args) 
	{
		Scanner ler = new Scanner(System.in);
		
		double x1,x2,y1,y2,d;
		
		System.out.printf("Entre com as coordenadas do ponto de partida X ");
		x1 = ler.nextDouble();
		System.out.printf("Entre com as coordenadas do ponto de partida Y ");
		y1 = ler.nextDouble();
		
		System.out.printf("Entre com as coordenadas do ponto final X ");
		x2 = ler.nextDouble();
		System.out.printf("Entre com as coordenadas do ponto final Y 1");
		y2 = ler.nextDouble();
		
		d=Math.sqrt((x2-x1)*(x2-x1) + (y2-y1)*(y2-y1));
		System.out.printf("\nA distância entre os dois pontos é: %f",d);
	}
}

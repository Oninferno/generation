package lista1;
import java.util.*;

public class exercicio5_intro {
	public static void main(String[] args) 
	{
		Scanner ler = new Scanner(System.in);
		float nota1, nota2, nota3, media;
		float peso1=2.0f, peso2=3.0f, peso3=5.0f, pesoTotal;
		
		System.out.println("Insira a nota 1: ");
		nota1=ler.nextFloat();
		
		System.out.println("Insira a nota 2: ");
		nota2=ler.nextFloat();
		
		System.out.println("Insira a nota 3: ");
		nota3=ler.nextFloat();
		
		pesoTotal = peso1 + peso2 +peso3;
		media=((nota1*peso1)+(nota2*peso2)+(nota3*peso3))/pesoTotal;
				
		System.out.println("A média ponderada total: "+media);
	}
}
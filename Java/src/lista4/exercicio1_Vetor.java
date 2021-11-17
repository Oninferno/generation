package lista4;
import java.util.*;

public class exercicio1_Vetor {

	public static void main(String[] args) 
	{
		float[] media = new float[4];
		float calculo=0;
		Scanner entrada = new Scanner(System.in);
		
		for(int i=0;i<4;i++) {
			System.out.printf("\nEntre com a %dº nota: ",i+1);
			media[i] = entrada.nextFloat();
		}
		
		for(int j=0;j<4;j++) {
			System.out.printf("\nNota "+(j+1)+" = "+media[j]);
			calculo += media[j]/4;
		}
		
		System.out.printf("\nA média foi: %f", calculo);
		
	entrada.close();
	}
}

package lista4;
import java.util.*;

public class exercicio2_Matriz {

	public static void main(String[] args) 
	{
		float[][] nota = new float[3][4];
		float[] media= new float[3];
		Scanner entrada = new Scanner(System.in);
		
		for(int linha=0;linha<3;linha++) {
			for(int coluna=0;coluna<4;coluna++) {
				
				System.out.printf("\nEntre com a %dº nota do %d aluno: ",coluna+1,linha+1);
				
				nota[linha][coluna] = entrada.nextFloat();
				media[linha]+=nota[linha][coluna]/4;
			}
		}
		
		for(int linha=0;linha<3;linha++) {
				System.out.printf("\nA média do %dº aluno foi: %f\n",linha+1,media[linha]);
		}
	
	entrada.close();
	}
}

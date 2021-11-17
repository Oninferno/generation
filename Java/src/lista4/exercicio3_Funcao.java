package lista4;
import java.util.*;

public class exercicio3_Funcao {
	
	private float nota, media;
	

	public float media() {
		
		for(int i=0;i<4;i++) {
			media+=nota/4;
		}
		
		System.out.printf("\nA média foi:%f",media);
		return media;
	}
	
	public void main(String[] args) {
		Scanner entrada = new Scanner(System.in);
		for(int i=0;i<4;i++) {
			System.out.printf("\nEntre com a %dº nota: ",i+1);
			
			nota = entrada.nextFloat();
		}
		
		media();
		entrada.close();
	}


}

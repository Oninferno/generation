package lista3;

public class exercicio1_repeticaoFor {
	public static void main(String[] args) 
	{
		int i;
		
		for(i=1000;i<=1999;i++) {
			if(i%11==5) {
				System.out.printf("\n%d",i);
			}
		}	
	}
}

package lista3;
import java.util.Scanner;

public class exercicio4_repeticaoWhile {

	public static void main(String[] args) 
	{
		Scanner ler = new Scanner(System.in);
		int idade=0, genero=0, persona=0, i=1;
		int pCalmos=0, mNervosa=0, hAgressivo=0, oCalmos=0, adultos=0, jovens=0;
		
		System.out.printf("Olá");
		while(i<2) {
			System.out.printf("\nEntre com a sua idade: ");
			idade = ler.nextInt();
				
			System.out.printf("\nComo você se identifica: \t1-Feminino \t2-Masculino \t3-Outros\n");
			genero = ler.nextInt();
			
			System.out.printf("\nQual personalidade você mais se identifica: \t1-Calma \t2-Nervosa \t3-Agressiva\n");
			persona = ler.nextInt();
			
			if(persona==1) {
				pCalmos++;
			}
			
			if(genero==1 && persona==2) {
				mNervosa++;
			}else if(genero==2 && persona==3) {
				hAgressivo++;
			}else if(genero==3 && persona==1) {
				oCalmos++;
			}
			
			if(idade>40 && persona==2) {
				adultos++;
			}else if(idade<18 && persona==1) {
				jovens++;
			}
			
			i++;
		}
		
		System.out.printf("\nNúmero de pessoas calmas: %d",pCalmos);
		System.out.printf("\nNúmero de mulheres nervosas: %d",mNervosa);
		System.out.printf("\nNúmero de homens agressivos: %d",hAgressivo);
		System.out.printf("\nNúmero de outros calmos: %d",oCalmos);
		System.out.printf("\nNúmero de pessoas maiores de 40 nervosas: %d",adultos);
		System.out.printf("\nNúmero de pessoas com menos de 18 calmas: %d",jovens);
		
		ler.close();
	}
}

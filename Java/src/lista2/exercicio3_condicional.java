package lista2;
import java.util.Scanner;

public class exercicio3_condicional {
	public static void main(String[] args) 
	{
		Scanner ler = new Scanner(System.in);
		int idade;
		
		System.out.printf("Entre com sua idade:");
		idade = ler.nextInt();

		if(idade<0) {
			System.out.printf("Desculpe, mas a idade inserida � invalida.");
		} else if(idade<10) {
			System.out.printf("Desculpe, mas voc� est� abaixo da idade minima...");
		}
		
		if(idade>=10 && idade<=14) {
			System.out.printf("Voc� est� na categoria infantil");
		}else if(idade>=15 && idade<=17) {
			System.out.printf("Voc� est� na categoria juvenil");
		}else if(idade>=18 && idade<=25) {
			System.out.printf("Voc� est� na categoria adulto");
		}else {
			System.out.printf("\nVoc� n�o pode participar");
		}
	}
}

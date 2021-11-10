package lista2;
import java.util.*;

public class teste {
	public static void main(String[] args) {
		Scanner ler = new Scanner(System.in);
		int idade;
		String nome;
		
		System.out.printf("Informe a sua idade: ");
		idade = ler.nextInt();
		ler.nextLine();
		
		System.out.printf("Informe seu nome: ");
		nome = ler.nextLine();
		
		System.out.printf("\nOlá %s",nome);
		System.out.printf("\nVocê tem %d anos",idade);
		
		if(idade>=18) {
			System.out.printf(", ou seja, é maior de idade.");
		}else if(idade>=1 && idade<18){
			System.out.printf(", ou seja, é menor de idade.");
		}else {
			System.out.printf("\nVocê entrou com uma idade inválida");
		}
	}
}

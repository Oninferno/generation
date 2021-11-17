package lista5;

public class Cliente {
	
	// ----------------- Atributos ----------------------
	String nome;
	String sobrenome;
	int idade;
	boolean cartaoLoja;
	
	// -------------------- Métodos -----------------------
	String nomeCliente() {
		String nomeCliente = nome +" "+ sobrenome;
		System.out.println(nomeCliente);
		return nomeCliente;
	}
	
	void idadeCliente() {
		System.out.printf(idade + " anos\n");
	}
	
	void possuiCartao() {
		if(cartaoLoja==false) {
			System.out.println("Você gostaria de criar o seu cartão?");
		}else if(cartaoLoja==true) {
			System.out.println("Seja bem vinde!");
		}
	}
}

package lista5;

public class Cliente {
	
	// ----------------- Atributos ----------------------
	String nome;
	String sobrenome;
	int idade;
	boolean cartaoLoja;
	
	// -------------------- M�todos -----------------------
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
			System.out.println("Voc� gostaria de criar o seu cart�o?");
		}else if(cartaoLoja==true) {
			System.out.println("Seja bem vinde!");
		}
	}
}

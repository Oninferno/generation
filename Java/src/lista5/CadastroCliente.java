package lista5;

public class CadastroCliente {
	public static void main(String[] args) 
	{
		// ----------- criando o objeto -----------
		Cliente cliente1 = new Cliente();
		
		// ----------- instanciando o objeto -----------
		cliente1.nome = "Roberto";
		cliente1.sobrenome = "Heisenberg";
		cliente1.idade = 27;
		cliente1.cartaoLoja = false;
		
		// ----------- utilizando os métodos -----------
		cliente1.nomeCliente();
		cliente1.idadeCliente();
		cliente1.possuiCartao();
	}
}

package lista5;

public class Aviao {

	String empresa;
	String modelo;
	boolean manutencao;
	
	String tipo() 
	{
		String tipo = "O avião é um " + modelo + " da empresa " + empresa;
		System.out.printf(tipo+"\n");
		return tipo;
	}
	
	void status() {
		if(manutencao==true) {
			System.out.println("Status: Disponível para voo");
		}else {
			System.out.println("Status: Indisponível para voo");
		}
	}
	
}

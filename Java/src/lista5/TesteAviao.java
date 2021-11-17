package lista5;

public class TesteAviao {
	public static void main(String[] args) 
	{
		Aviao hangar1 = new Aviao();
		
		hangar1.empresa = "Latam";
		hangar1.modelo = "A319";
		hangar1.manutencao = false;
		
		hangar1.tipo();
		hangar1.status();
	}
}

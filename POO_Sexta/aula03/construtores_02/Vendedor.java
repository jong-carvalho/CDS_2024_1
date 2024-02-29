package ExerciciosPraticos.aula03.construtores_02;

public class Vendedor extends Pessoa{

    int codVendedor;
    float vendasRealizadas;
    float comissao;

    public void calcularComissao(){
       float salarioComissao =  vendasRealizadas * comissao;
        System.out.println("O valor a ser recebido em comissão pelo vendedor " + nome + " é " + salarioComissao);
    }
}

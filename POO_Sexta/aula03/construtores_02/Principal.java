package ExerciciosPraticos.aula03.construtores_02;

public class Principal {

    public static void main(String[] args) {

        Vendedor v1 = new Vendedor();

        v1.nome = "Joao";
        v1.idade = 43;
        v1.sexo = 'm';
        v1.rg = "12.345.678-90";
        v1.codVendedor = 1234;
        v1.vendasRealizadas = 157000.98f;
        v1.comissao = 0.035f;

        v1.calcularComissao();

    }
}

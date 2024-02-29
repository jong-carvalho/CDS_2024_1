package _04_exemploImplementarDiagramasDeClasse;

public class Vendedor extends Pessoa{

    int codVendedor;
    float vendasRealizadas;


    public void verificarComissao(){
        System.out.println("A comissão do vendedor é: " + (vendasRealizadas * 0.15) );
    }

    public void verificarVendasRealizadas(){
        System.out.println("O valor de vendas realizadas: " + vendasRealizadas);
    }

    public void exibirDadosVendedor() {
        System.out.print("*****Exibindo dados do Vendedor*****");
        System.out.println(
                "\nVendedor: " + nome +
                "\nCpf: " + cpf +
                "\nRg: " + rg +
                "\nLogradouro: " +  logradouro +
                "\nCódigo do Vendedor: " + codVendedor
        );
    }
}

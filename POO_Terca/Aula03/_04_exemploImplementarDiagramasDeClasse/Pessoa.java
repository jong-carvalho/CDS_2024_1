package _04_exemploImplementarDiagramasDeClasse;

public class Pessoa {

    String nome;
    String cpf;
    String rg;
    String logradouro;

    public void exibirDadosPessoa(){
        System.out.print("*****Exibindo dados do Cliente*****");
        System.out.println(
                "\nCliente: " + nome +
                "\nCpf: " + cpf +
                "\nRg: " + rg +
                "\nLogradouro: " +  logradouro
        );
    }
}

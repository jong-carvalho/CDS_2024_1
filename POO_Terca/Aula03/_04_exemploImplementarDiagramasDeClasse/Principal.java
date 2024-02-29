package _04_exemploImplementarDiagramasDeClasse;

import java.util.Arrays;

public class Principal {


    public static void main(String[] args) {

        Pessoa p1 = new Pessoa();

        p1.nome = "Paulo Lima";
        p1.cpf = "123.456.789-00";
        p1.rg = "12.345.678-9";
        p1.logradouro = "Rua um, 123";

        Cliente c1 = new Cliente();
        Cliente c2 = new Cliente();

        c1.nome = p1.nome;
        c1.cpf = p1.cpf;
        c1.rg = p1.rg;
        c1.logradouro = p1.logradouro;
        c1.codCliente = 1;
        c1.saldo = 300.00f;
        c1.extrato = 1000.00f;
        c1.pedidos = new String[]{"Notebook", "Iphone", "Lava-roupas"};



//        Não é certo exibir algumas informações como codCliente, saldo, extrato, codPedidos
        System.out.println(
                "\n_04_exemploImplementarDiagramasDeClasse.Cliente: " + c1.nome +
                        "\nCpf: " + c1.cpf +
                        "\nRg: " + c1.rg +
                        "\nLogradouro: " +  c1.logradouro +
                        "\nCódigo do _04_exemploImplementarDiagramasDeClasse.Cliente: " + c1.codCliente +
                        "\nSaldo: " + c1.saldo +
                        "\nExtrato: " + c1.extrato +
                        "\nCódigos de Pedidos: " + Arrays.toString(c1.pedidos)
        );

        c1.verificarExtrato();
        c1.verificarSaldo();
        c1.verificarPedidos(2);



        System.out.println("----------------------------------------------------");


        c2.nome = "Maria Silva";
        c2.cpf = "987.654.321-00";
        c2.rg = "98.765.432-1";
        c2.logradouro = "Rua dois, 456";
        c2.codCliente = 2;
        c2.saldo = 0.00f;
        c2.extrato = 3000.00f;
        c2.pedidos = new String[]{"Pendrive","Tv","Geladeira"};

        c2.verificarExtrato();
        c2.verificarSaldo();
        c2.verificarPedidos(0);
        c2.exibirDadosCliente();

        System.out.println("|||||||||||||||||||||||||||||||||||||||||||||||||||||||");

        Vendedor v1 = new Vendedor();
        Vendedor v2 = new Vendedor();

        v1.nome = "Cesar Santiago";
        v1.cpf = "111.222.333-00";
        v1.rg = "11.222.333-4";
        v1.logradouro = "Rua tres, 78";
        v1.codVendedor = 1;
        v1.vendasRealizadas = 10000.00f;


        v1.verificarVendasRealizadas();
        v1.verificarComissao();
        v1.exibirDadosVendedor();

        v2.nome = "Marilia Hernandes";
        v2.cpf = "333.333.333-00";
        v2.rg = "33.333.333-3";
        v2.logradouro = "Rua quatro, 100";
        v2.codVendedor = 3;
        v2.vendasRealizadas = 25000.00f;


        v2.verificarVendasRealizadas();
        v2.verificarComissao();
        v2.exibirDadosVendedor();
    }
}

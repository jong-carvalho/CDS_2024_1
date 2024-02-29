package _04_exemploImplementarDiagramasDeClasse;

import java.util.Arrays;

public class Cliente extends Pessoa {

    int codCliente;
    float saldo;
    float extrato;
    String[] pedidos;

    public void verificarExtrato(){
        System.out.println("O extrato que o cliente possui é: " + extrato);
    }

    public void verificarSaldo() {
        System.out.println("O saldo que o cliente possui é: " + saldo);
    }

    public void verificarPedidos(int posPedido){
        System.out.println("O pedido armazenado na posição informada é: " + pedidos[posPedido]);
    }

    public void exibirDadosCliente(){
        System.out.print("*****Exibindo dados do Cliente*****");
        System.out.println(
                "\nCliente: " + nome +
                "\nCpf: " + cpf +
                "\nRg: " + rg +
                "\nLogradouro: " +  logradouro  +
                "\nSaldo: " + saldo +
                "\nExtrato: " + extrato +
                "\nPedidos: " + Arrays.toString(pedidos)
        );
    }
}

package ExerciciosPraticos.aulaSistemaBancario;

import java.util.Random;
import java.util.Scanner;
import java.util.UUID;

public class Cliente extends Pessoa{

    static Scanner scanner = new Scanner(System.in);
    String numeroConta;
    static TipoConta tipoConta;
    UUID idCliente;
    static double saldo;
    double chequeEspecial;

    public static String geradorNumeroConta(){
        Random aleatorio = new Random();
        int valor = aleatorio.nextInt(99999) + 1;

        return String.valueOf(valor);
    }

    public double atribuidorChequeEspecial(){
        double chequeEspecial;

        if (saldo > 10000){
            chequeEspecial = 5000;
        } else if (saldo >= 5000){
            chequeEspecial = 3000;
        } else if (saldo >= 1000){
            chequeEspecial = 500;
        } else if (saldo >= 500) {
            chequeEspecial = 300;
        } else {
            chequeEspecial = 0;
        }

        return chequeEspecial;
    }

    public Cliente(){
        super();
    }

    public Cliente(String nome, String sobrenome, Endereco endereco, String cpf, String rg,
                   TipoConta tipoConta, double saldo){
        super(nome, sobrenome, endereco,cpf, rg);
        Cliente.tipoConta = tipoConta;
        Cliente.saldo = saldo;
        this.idCliente = UUID.randomUUID();
        this.numeroConta = geradorNumeroConta();
        this.chequeEspecial = atribuidorChequeEspecial();
    }

    public static Cliente criarCliente(){

        Cliente cliente;

        System.out.println("Digite o nome do cliente: ");
        String nome = scanner.next();

        System.out.println("Digite o sobrenome do cliente: ");
        String sobrenome = scanner.next();

        System.out.println("Agora você deve informar dados do endereço do cliente:");
        Endereco endereco = Endereco.criarEndereco();

        System.out.println("Digite o cpf do cliente: ");
        String cpf = scanner.next();

        System.out.println("Digite o rg do cliente: ");
        String rg = scanner.next();

        System.out.println("""
                            Escolha o tipo da conta
                            Digite 1 para Conta Corrente
                            Digite 2 para Conta Poupança
                            Digite 3 para Conta Investimento\s""");
        int escolhaTipoConta = scanner.nextInt();
        TipoConta tipoConta;
        if(escolhaTipoConta == 1) tipoConta = TipoConta.CORRENTE;
        else if (escolhaTipoConta == 2) tipoConta = TipoConta.POUPANCA;
        else tipoConta = TipoConta.INVESTIMENTO;

        System.out.println("Digite o valor do depósito inicial: ");
        double saldo = scanner.nextDouble();

         cliente = new Cliente(nome, sobrenome, endereco, cpf, rg, tipoConta, saldo);


        return cliente;
    }

    public static String exibirCliente(Cliente cliente) {


        return "#-------- DADOS DO CLIENTE --------#" +
                "\n\tNome: " + cliente.nome + " " + cliente.sobrenome +
                "\n\tCPF: " +  cliente.cpf +
                "\n\tRG: " + cliente.rg +
                "\n\tEndereço: " + Endereco.exibirEndereco(cliente.endereco) +
                "\n\n#-------- DADOS DA CONTA DO CLIENTE --------#" +
                "\n\tConta: " + cliente.tipoConta +
                "\n\tSaldo: " + cliente.saldo +
                "\n\tDisponível no Cheque Especial: " + cliente.chequeEspecial +
                "\n\tNúmero da Conta: " + cliente.numeroConta +
                "\n\tID do Cliente: " + cliente.idCliente;
    }
}

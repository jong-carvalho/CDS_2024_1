package ExerciciosPraticos.aulaSistemaBancario;

import java.util.Scanner;

public class Endereco {

    static Scanner scanner = new Scanner(System.in);
    static String cep;
    static String rua;
    static String numero;
    static String bairro;
    static String cidade;
    static String estado;
    static String pais;

    public Endereco(String cep, String rua, String numero, String bairro,
                    String cidade, String estado, String pais) {
        this.cep = cep;
        this.rua = rua;
        this.numero = numero;
        this.bairro = bairro;
        this.cidade = cidade;
        this.estado = estado;
        this.pais = pais;
    }
    public static Endereco criarEndereco(){
        System.out.println("Digite o cep: ");
        String cep = scanner.nextLine();
        System.out.println("Digite a rua: ");
        String rua = scanner.nextLine();;
        System.out.println("Digite o numero: ");
        String numero = scanner.nextLine();;
        System.out.println("Digite o bairro: ");
        String bairro = scanner.nextLine();;
        System.out.println("Digite o cidade: ");
        String cidade = scanner.nextLine();;
        System.out.println("Digite o estado: ");
        String estado = scanner.nextLine();;
        System.out.println("Digite o pais: ");
        String pais = scanner.nextLine();;

        Endereco endereco = new Endereco(cep, rua, numero, bairro, cidade, estado, pais);

        return endereco;
    }

    public static String exibirEndereco(Endereco endereco) {

        return  "#\n\t-------- DADOS DO CLIENTE --------#" +
                "\n\t\tCEP: " + cep +
                "\n\t\tRua: " + rua +
                "\n\t\tNúmero: " + numero +
                "\n\t\tBairro: " + bairro +
                "\n\t\tCidade: " + cidade +
                "\n\t\tEstado: " + estado +
                "\n\t\tPaís: " + pais;
    }
}

package ExerciciosPraticos.aulaSistemaBancario;

public class Pessoa {

    static String nome;
    static String sobrenome;
    Endereco endereco;
    static String cpf;
    static String rg;


    public Pessoa(String nome, String sobrenome, Endereco endereco, String cpf, String rg) {
        this.nome = nome;
        this.sobrenome = sobrenome;
        this.endereco = endereco;
        this.cpf = cpf;
        this.rg = rg;
    }

    public Pessoa() {

    }
}

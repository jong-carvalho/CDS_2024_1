package ExerciciosPraticos.aula02;

public class Pessoa {
    public String nome;
    int idade;
    public String cpf;

    public Pessoa() {

    }

    public Pessoa(String nome, int Idade,String cpf){
        this.nome = nome;
        this.idade = idade;
        this.cpf = cpf;
    }

    public String podeAposentar(){
        if(idade >= 60){
            return "Pode aposentar.";
        } else return "Não Pode";
    }

}
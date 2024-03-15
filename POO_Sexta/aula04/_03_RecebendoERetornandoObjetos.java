package ExerciciosPraticos.aula05;

public class _03_RecebendoERetornandoObjetos {

    public static void main(String[] args) {

        Pessoa pessoa = new Pessoa("Joana", "Silva", 58);

        System.out.println(mudaCampos(pessoa));

        System.out.println(pessoa.nome + " | " + pessoa.sobrenome);


    }

    public static String mudaCampos(Pessoa pessoa) {
        String nomeTemporario, sobrenomeTemporario;

        nomeTemporario = pessoa.nome;
        sobrenomeTemporario = pessoa.sobrenome;

        pessoa.nome = "Nome: " + nomeTemporario;
        pessoa.sobrenome = "Sobrenome: " + sobrenomeTemporario;

        return "Os campos foram alterados com sucesso!";
    }

    public static class Pessoa {

        String nome;
        String sobrenome;
        int idade;

        public Pessoa(String nome, String sobrenome, int idade) {
            this.nome = nome;
            this.sobrenome = sobrenome;
            this.idade = idade;
        }
    }
}

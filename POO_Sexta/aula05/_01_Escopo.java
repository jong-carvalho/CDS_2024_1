package ExerciciosPraticos.aula04;

public class _01_Escopo {

    public static void main(String[] args) {
        Pessoa p1 = new Pessoa();

        p1.nome = "Beltrano";
        p1.idade = 18;
        p1.renda = 1000.00;

        if(p1.renda <= 1000) {
            double aumento = p1.renda * 0.5;
            p1.renda = p1.renda+aumento;
//            System.out.println(aumento);
        }

        //tentar usar aumento
//        System.out.println(aumento);
    }

    public static class Pessoa {

        String nome;
        int idade;
        double renda;

        Pessoa(){}

        public Pessoa(String nome, int idade, double renda) {
            this.nome = nome;
            this.idade = idade;
            this.renda = renda;
        }

    }
}

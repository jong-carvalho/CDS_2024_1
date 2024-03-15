package ExerciciosPraticos.aula05;

public class _04_sobrecargaDeMetodos {

    public static void main(String[] args) {

        int a = 0;
        int b = 0;
        int c = 0;
        float d = 0;
        float e = 0;

        Soma soma = new Soma();

        soma.somando(a, b);
        soma.somando(d, e);
        soma.somando(a, b, c);


        Media media = new Media();

    }

    public static class Soma {

        public String somando(int a, int b){
            return "Resultado: " + (a+b);
        }

        public String somando(float a, float b){
            return "Resultado: " + (a+b);
        }

        public String somando(int a, int b, int c){
            return "Resultado: " + (a+b+c);
        }

    }

    public static class Media {

        public String calculaMedia(float a, float b) {
            return "A média é: " + (a+b);
        }

        public String calculaMedia(float a,float b,float c,float d,float e){
            return "A média é: " + ((a+b+c+d+e)/5);
        }

        public String calcularMedia(float avaliacaoParcial, float exercicios, float projeto, float avaliacaoRegimental) {
            return "A média é " + (avaliacaoParcial + exercicios + projeto + avaliacaoRegimental);
        }

    }
}

package ExerciciosPraticos.aula03;

public class _04_ConversaoDeTipos {

    public static void main(String[] args) {

        String converter = "65";

        int inteiro = Integer.parseInt(converter);

        System.out.println(inteiro + 15);

        System.out.println(Integer.toString(inteiro) + "ola");

        double pontoFlutuante = Double.parseDouble(converter);

        System.out.println(pontoFlutuante + 15);

        //mostra o código alt do número
        int caracter = converter.charAt(0);

        System.out.println(caracter);

    }
}

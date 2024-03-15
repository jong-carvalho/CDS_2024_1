import java.util.Scanner;

public class _05_desafioTemperaturas {

    public static void main(String[] args) {

        Scanner entrada = new Scanner(System.in);

        System.out.println("Para converter de Fahrenheit para Celsius digite 1 \n" +
                "Para converter de Celsius para Fahrenheit digite 2");
        int escolha = entrada.nextInt();

        double graus = 0;

        double saida = 0;

        if(escolha == 1){
            System.out.println("Digite os graus em Fahrenheit: ");
            graus = entrada.nextFloat();

            saida =  ((graus - 32) / 1.8);

            System.out.println(graus + "graus Fahrenheit convertidos para Celsius é " + saida + " graus" );

        } else {
            System.out.println("Digite os graus em Celsius: ");
            graus = entrada.nextFloat();

            saida = 1.8*graus + 32;

            System.out.println(graus + "graus Celsius convertidos para Fahrenheit é " + saida + " graus" );
        }




    }
}

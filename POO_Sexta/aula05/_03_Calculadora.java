package ExerciciosPraticos.aula04;

import java.util.Scanner;

public class _03_Calculadora {

    public static void main(String[] args) {
        CalculadoraComplexa calculadora = new CalculadoraComplexa();

        CalculadoraSimples calculadoraSimples = new CalculadoraSimples();

        int a,b;
        a=10;
        b=20;

        System.out.println(calculadoraSimples.adicao(a,b));

        System.out.println(calculadoraSimples.subtracao(a,b));

        System.out.println(calculadoraSimples.divisão(a,b));

        System.out.println(calculadoraSimples.multiplicacao(a,b));


        calculadora.interacao();


    }

    public static class CalculadoraSimples {

        float v1, v2;

        public String adicao(int v1, int v2) {
            return  "O resultado da adição (" + v1 + " + " + v2 + ") é " + (v1 + v2) ;
        }

        public String subtracao(int v1, int v2) {
            return  "O resultado da subtração (" + v1 + " - " + v2 + ") é " + (v1 - v2) ;
        }

        public String divisão(int v1, int v2) {
            return  "O resultado da divisão (" + v1 + " - " + v2 + ") é " + (v1 / v2) ;
        }

        public String multiplicacao(int v1, int v2) {
            return  "O resultado da multiplicação (" + v1 + " - " + v2 + ") é " + (v1 * v2) ;
        }
    }

    public static class CalculadoraComplexa {

        Scanner leia = new Scanner(System.in);

        public void interacao() {
            System.out.println("Seja bem vindo ao nosso sistema de cálculo da fórmula de Bhaskara.");
            System.out.println("Você deverá digitar três números (a, b, c) para o cálculo ser realizado");
            System.out.println("Por favor, digite o primeiro número (a): ");
            float a = leia.nextFloat();
            System.out.println("Por favor, digite o primeiro número (b): ");
            float b = leia.nextFloat();
            System.out.println("Por favor, digite o primeiro número (c): ");
            float c = leia.nextFloat();

            System.out.println(bhaskara(a, b, c));

        }

        public String bhaskara(float a, float b, float c) {

            //  delta = b^2 - 4.a.c
            double delta = Math.pow(b, 2) - 4 * a * c;

            //  bhaskara =>  ( -b +- √ delta ) / 2.a
            double x1 = (-b + Math.sqrt(delta)) / 2 * a;

            double x2 = (-b - Math.sqrt(delta)) / 2 * a;

            return "O delta é " + delta + "\nAs raízes da equação são: X' = " + x1 + " X'' = " + x2;

//        Exemplo a ser testado a=1 b=12 c=-13 ... delta = 196 x'1.0 e x"= -13.0
        }

    }
}

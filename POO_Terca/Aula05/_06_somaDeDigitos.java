package ExerciciosPraticos.Exercicios_estruturas_repeticao;

import java.util.Scanner;
public class _06_somaDeDigitos {


        public static void main(String[] args) {
            Scanner scanner = new Scanner(System.in);
            System.out.print("Digite um número inteiro positivo: ");
            int n = scanner.nextInt();

            int contador = 0;
            while (n != 0) {
                n /= 10;
                contador++;
            }

            System.out.println("O número de dígitos é: " + contador);
            scanner.close();
        }


}

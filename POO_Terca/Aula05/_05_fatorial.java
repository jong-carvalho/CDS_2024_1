package ExerciciosPraticos.Exercicios_estruturas_repeticao;

import java.util.Scanner;

public class _05_fatorial {



        public static void main(String[] args) {
            Scanner scanner = new Scanner(System.in);
            System.out.print("Digite um número inteiro não negativo: ");
            int n = scanner.nextInt();

            int fatorial = 1;
            for (int i = 1; i <= n; i++) {
                fatorial *= i;
            }

            System.out.println("O fatorial de " + n + " é: " + fatorial);
            scanner.close();
        }

}

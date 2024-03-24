package ExerciciosPraticos.Exercicios_estruturas_repeticao;

import java.util.Scanner;

public class _04_somaNumerosPares {


        public static void main(String[] args) {
            Scanner scanner = new Scanner(System.in);
            System.out.print("Digite um número inteiro positivo: ");
            int n = scanner.nextInt();

            int soma = 0;


            for (int i = 1; i <= n; i++) {
                if(i % 2 == 0) {
                    soma += i;
                }
            }

            System.out.println("A soma dos " + n + " primeiros números pares é: " + soma);
            scanner.close();
        }


}

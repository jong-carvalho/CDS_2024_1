package ExerciciosPraticos.aula06;

import java.util.Scanner;

public class _02_DesafioTabuada {

    public static void main(String[] args) {

        Scanner scanner = new Scanner(System.in);

        System.out.println("Digite um número para calcularmos a tabuada: ");
        int num = scanner.nextInt();

        for (int i = 1; i <= 10; i++){
            System.out.println(i + " x " + num + " = " + (i*num));
        }
    }
}

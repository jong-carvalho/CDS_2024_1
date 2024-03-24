package ExerciciosPraticos.aula06;

import java.util.Scanner;

public class _02b_DesafioTabuada {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

//        System.out.println("Digite um número para calcularmos a tabuada: ");
//        int num = scanner.nextInt();
//
//        String resposta = "";
//        int cont = 1;
//
//        do {
//            System.out.println(cont + " x "  + num + " = " + (num*cont));
//
//            System.out.println("Deseja continuar?");
//            resposta = scanner.next();
//
//            cont++;
//
//        } while(resposta.equals("s"));


        System.out.println("Digite um número para calcularmos a tabuada: ");
        int num = scanner.nextInt();

        System.out.println("Digite o número de repetições");
        int vezes = scanner.nextInt();

        int cont = 1;

        while(vezes > 0){

            System.out.println(cont + " x "  + num + " = " + (num*cont));

            vezes--;
            cont++;
        }
    }
}

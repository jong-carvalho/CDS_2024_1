import java.util.Scanner;

public class _01_desafioParOuImpar {

    public static void main(String[] args) {


        Scanner entrada = new Scanner(System.in);

        System.out.println("Digite um número inteiro: ");
        int num = entrada.nextInt();

        if(num % 2 == 0)
            System.out.println("O número " + num + " é par.");
        else
            System.out.println("O número " + num + " é ímpar.");

    }
}

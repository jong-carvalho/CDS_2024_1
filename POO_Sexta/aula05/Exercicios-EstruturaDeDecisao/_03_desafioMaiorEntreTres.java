import java.util.Scanner;

public class _03_desafioMaiorEntreTres {

    public static void main(String[] args) {


        Scanner entrada = new Scanner(System.in);

        System.out.println("Cuidado: Nosso sistema falha com números repetidos");

        System.out.print("Digite o primeiro número: ");
        int n1 = entrada.nextInt();

        System.out.print("Digite o segundo número: ");
        int n2 = entrada.nextInt();

        System.out.print("Digite o terceiro número: ");
        int n3 = entrada.nextInt();

        if(n1 > n2 && n1 > n3)
            System.out.println(n1 + "é o maior número.");
        else if(n2 > n1 && n2 > n3)
            System.out.println(n2 + "é o maior número.");
        else
            System.out.println(n3 + "é o maior número.");


    }
}

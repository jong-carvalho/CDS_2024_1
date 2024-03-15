import java.util.Scanner;

public class _04_desafioPositivoNegativoZero {

    public static void main(String[] args) {

        Scanner entrada = new Scanner(System.in);

        System.out.print("Digite um número: ");
        int num = entrada.nextInt();

        if(num > 0)
            System.out.println("O número: " + num + " é positivo");
        else if(num < 0)
            System.out.println("O número: " + num + " é negativo");
        else
            System.out.println("O número: " + num + " é igual à zero");


    }
}

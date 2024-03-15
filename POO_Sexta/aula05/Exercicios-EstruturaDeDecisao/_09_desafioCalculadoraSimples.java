import java.util.Scanner;

public class _09_desafioCalculadoraSimples {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Digite o primeiro número: ");
        int n1 = scanner.nextInt();

        System.out.println("Digite o segundo número: ");
        int n2 = scanner.nextInt();

        System.out.print("Digite a operação (* , / , + ou -):");
        String op = scanner.next();

        switch (op) {
            case "*":
                System.out.println(n1 + " * " + n2 + " = " + (n1*n2));
                break;
            case "/":
                System.out.println(n1 + " / " + n2 + " = " + (n1/n2));
                break;
            case "+":
                System.out.println(n1 + " + " + n2 + " = " + (n1+n2));
                break;
            case "-":
                System.out.println(n1 + " - " + n2 + " = " + (n1-n2));
                break;
            default:
                System.out.println("Operação inválida.");
        }
    }
}

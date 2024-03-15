import java.util.Scanner;

public class _10_desafioCalculadoraSimplesComMetodos {

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
                multiplicacao(n1, n2);
                break;
            case "/":
                divisao(n1, n2);
                break;
            case "+":
                soma(n1, n2);
                break;
            case "-":
                subtracao(n1,n2);
                break;
            default:
                System.out.println("Operação inválida.");
        }
    }

    public static void soma(int numero1, int numero2){
        System.out.println(numero1 + " + " + numero2 + " = " + (numero1+numero2));
    }

    public static void subtracao(int numero1, int numero2){
        System.out.println(numero1 + " - " + numero2 + " = " + (numero1-numero2));
    }

    public static void divisao(int numero1, int numero2){
        System.out.println(numero1 + " / " + numero2 + " = " + (numero1/numero2));
    }

    public static void multiplicacao(int numero1, int numero2){
        System.out.println(numero1 + " + " + numero2 + " = " + (numero1+numero2));
    }
}

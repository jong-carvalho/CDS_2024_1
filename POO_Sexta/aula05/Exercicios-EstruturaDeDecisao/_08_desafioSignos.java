import java.util.Scanner;

public class _08_desafioSignos {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Digite um número de 1 a 12 para sabermos qual é o seu signo: ");
        int mes = scanner.nextInt();

        switch (mes) {
            case 1:
                System.out.println("Capricórnio");
                break;
            case 2:
                System.out.println("Aquário");
                break;
            case 3:
                System.out.println("Peixes");
                break;
            case 4:
                System.out.println("Áries");
                break;
            case 5:
                System.out.println("Touro");
                break;
            case 6:
                System.out.println("Gêmeos");
                break;
            case 7:
                System.out.println("Câncer");
                break;
            case 8:
                System.out.println("Leão");
                break;
            case 9:
                System.out.println("Virgem");
                break;
            case 10:
                System.out.println("Libra");
                break;
            case 11:
                System.out.println("Escorpião");
                break;
            case 12:
                System.out.println("Sagitário");
                break;
            default:
                System.out.println("Número inválido, por favor, insira um número de 1 a 7.");
        }
    }
}

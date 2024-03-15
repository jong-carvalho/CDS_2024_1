import java.util.Scanner;

public class _02_desafioNotaAluno {

    public static void main(String[] args) {


        Scanner entrada = new Scanner(System.in);

        System.out.print("Digite sua nota final: ");
        float nota = entrada.nextFloat();

        if(nota >= 6)
            System.out.println("Você está aprovado.");
        else if(nota < 2)
            System.out.println("Você está reprovado.");
        else
            System.out.println("Você ficou de exame.");

    }
}

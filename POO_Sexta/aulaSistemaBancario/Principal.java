package ExerciciosPraticos.aulaSistemaBancario;

import java.util.Random;
import java.util.Scanner;

public class Principal {

    public static void main(String[] args) {

        Scanner scanner = new Scanner(System.in);



        System.out.println("### BANCO ###");

        int opcao;
        Cliente cliente = null;


        do {
            System.out.println("----- Menu -----");
            System.out.println("1. Criar cliente");
            System.out.println("2. Exibir cliente");
            System.out.println("3. Criar cliente");
            System.out.println("4. Exibir cliente");
            System.out.println("0. ");
            System.out.println("Escolha uma opção: ");
            opcao = scanner.nextInt();

            switch (opcao) {
                case 1:
                    cliente = Cliente.criarCliente();
                    break;
                case 2:
                    if (cliente == null){
                        System.out.println("Nenhum cliente cadastrado");
                    } else {
                        System.out.println(Cliente.exibirCliente(cliente));
                    }

                    break;

                    //////////////////////////////////////////////////////////////////////////
            }
        } while (opcao != 0);

    }
}

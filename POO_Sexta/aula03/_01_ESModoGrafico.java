package ExerciciosPraticos.aula03;

import javax.swing.*;

public class _01_ESModoGrafico {

    public static void main(String[] args) {
        JOptionPane.showMessageDialog(null, "Olá mundo");

        String nome = JOptionPane.showInputDialog( "Digite seu nome:");
        int idade = Integer.parseInt(JOptionPane.showInputDialog("Digite sua idade:"));

        JOptionPane.showMessageDialog(null, "Olá " + nome + ". Você tem " + idade + "anos.");

    }
}

package ExerciciosPraticos.aula03.construtores;

public class Triangulo {

        float base;
        float altura;

        Triangulo() {

        }

        Triangulo(float b, float a){
            base = b;
            altura = a;
        }

        public Float calculoDeArea()
        {
            return (base * altura)/2;
        }
    }


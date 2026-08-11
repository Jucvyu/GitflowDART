// Se desea calcular la siguiente serie hasta un valor menor o igual a 100. La serie es:1 1 2 3 5 8 13… Calcule el resto de los valores e imprima en pantalla.

void main() {
    int anterior = 1;
    int actual = 1;

    print(anterior);
    print(actual);

    while (true) {
    int siguiente = anterior + actual;

    if (siguiente > 100) {
        break;
    }

    print(siguiente);

    anterior = actual;
    actual = siguiente;
    }
}

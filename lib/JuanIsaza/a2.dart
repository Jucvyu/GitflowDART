/*1. Se desea calcular la distancia recorrida (D) por un automóvil que tiene velocidad constante (m/s) durante un tiempo T (Sg), considerar que es un MRU (Movimiento Rectilíneo Uniforme). Tenga en cuenta que la formula del movimiento rectilíneo es:

```dart
D = V * T
``` 
*/
import 'dart:io';
void main(){
  print('Ingrese la velocidad del automóvil (m/s): ');
  String? velocidadInp = stdin.readLineSync();

  double velocidad = double.tryParse(velocidadInp ?? '0') ?? 0;

  print('Ingrese el tiempo (s): ');
  String? tiempoInp = stdin.readLineSync();

  double tiempo = double.tryParse(tiempoInp ?? '0') ?? 0;

  double distancia = velocidad * tiempo;

  if(velocidad <= 0 || tiempo <= 0) {
    print('Error: Ingrese valores válidos para la velocidad y el tiempo.');
    return;
  }
  
  print('La distancia recorrida es de $distancia m');

}
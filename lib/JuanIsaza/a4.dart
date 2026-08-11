/* Se tiene un horno en casa con temperaturas en grados Celsius centígrado), requiere transformar la temperatura de grados centígrados °C a grados Fahrenheit. Para ello tenga en cuenta la siguiente fórmula. El usuario deberá digitar la temperatura y a través del algoritmo cambiar la temperatura del mismo. */

import 'dart:io';

void main() {
  print('Ingrese la temperatura en grados centígrados: ');
  String? temperatura = stdin.readLineSync();

  double temperaturaDouble = double.tryParse(temperatura ?? '0') ?? 0;

  double temperaturaFahrenheit = (temperaturaDouble - 32) * 5 / 9;

  if (temperaturaDouble < -273.15 || temperaturaDouble > 100) {
    print('La temperatura en grados Fahrenheit es: $temperaturaFahrenheit');
  } else {
    print('Error: La temperatura debe estar entre -273.15 y 100 grados centígrados.');
  }
}

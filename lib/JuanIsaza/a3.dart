/* Se requiere el algoritmo para elaborar la planilla de un empleado. Para ello se debe digitar: nombre del empleado, la cantidad de horas laboradas en el mes y la tarifa por hora. Se debe calcular el total devengado por el empleado en el mes e imprimir: Nombre del empleado, cantidad de horas laboradas y total devengado. */

import 'dart:io';

void main() {
  print('Ingrese el nombre del empleado: ');
  String? nombre = stdin.readLineSync();

  print('Ingrese la cantidad de horas laboradas en el mes: ');
  String? horasLaboradas = stdin.readLineSync();

  double horasLaboradasDouble = double.tryParse(horasLaboradas ?? '0') ?? 0;

  print('Ingrese la tarifa por hora: ');
  String? tarifaPorHora = stdin.readLineSync();

  double tarifaPorHoraDouble = double.tryParse(tarifaPorHora ?? '0') ?? 0;

  double totalDevengado = horasLaboradasDouble * tarifaPorHoraDouble;

  if(nombre == "" || horasLaboradasDouble <= 0 || tarifaPorHoraDouble <= 0) {
    print('Error: Ingrese valores válidos para el nombre, horas laboradas y tarifa por hora.');
    return;
  }
  print('Nombre del empleado: $nombre');
  print('Cantidad de horas laboradas: $horasLaboradasDouble');
  print('Tarifa por hora: $tarifaPorHoraDouble');
  print('Total devengado: $totalDevengado');
}
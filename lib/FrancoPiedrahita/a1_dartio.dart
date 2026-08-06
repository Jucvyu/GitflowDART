import 'dart:io';

// Clase Persona
class Person{
  String name; 
  int age;

  // Constructor
  Person({required this.name, required this.age});

  // Metodo para evaluar si es mayor de edad
  bool isAnAdult(){
    return age >= 18;
  }

  bool isvalidAge(){
    return age > 0 && age != null;
  }

  bool isvalidName(){
    return name.isNotEmpty;
  }


  // Metodo para imprimir informacion
  void printPerson(){
    if (isvalidAge() && !isvalidName()){
      if (isAnAdult()){
        print('Hola $name, eres mayor de edad');
      } else {
        print('Hola $name, eres menor de edad');
      }
    }
    else{
      print('Error: Ingrese un valor valido para la edad');
    }
  }

}
void main() {
  print("Ingrese su nombre: ");
  String? name = stdin.readLineSync();

  print("Ingrese su edad: ");
  String age = stdin.readLineSync() ?? '0';
  int ageInt = int.tryParse(age) ?? 0;

  Person person = Person(name: name ?? 'Nombre no proporcionado', age: ageInt);
  person.printPerson();
}
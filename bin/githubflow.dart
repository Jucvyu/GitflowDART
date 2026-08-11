import 'dart:io';

// Clase Contact
class Contact {
  String name;
  String telefono;

  Contact(this.name, this.telefono);
}

void main() {
  List<Contact> diary = [];
  bool running = true;

  while (running) {
    print('\n--- Agenda de Contactos ---');
    print('1. Agregar Contacto');
    print('2. Ver Contactos');
    print('3. Buscar Contacto');
    print('4. Eliminar Contacto');
    print('5. Salir');

    stdout.write('Elige una opción: ');
    String? option = stdin.readLineSync();

    switch (option) {
      // 1. AGREGAR CONTACTO
      case '1':
        stdout.write('Ingrese el nombre: ');
        String name = stdin.readLineSync() ?? '';

        stdout.write('Ingrese el teléfono: ');
        String telefono = stdin.readLineSync() ?? '';

        Contact nuevoContacto = Contact(name, telefono);
        diary.add(nuevoContacto);

        print('Contacto agregado correctamente.');
        break;

      // 2. VER CONTACTOS
      case '2':
        if (diary.isEmpty) {
          print('No hay contactos registrados.');
        } else {
          print('\n--- Lista de Contactos ---');

          for (int i = 0; i < diary.length; i++) {
            print('${i + 1}. Nombre: ${diary[i].name}');
            print('   Teléfono: ${diary[i].telefono}');
          }
        }
        break;

      // 3. BUSCAR CONTACTO
      case '3':
        stdout.write('Ingrese el nombre a buscar: ');
        String nombreBuscar = stdin.readLineSync() ?? '';

        bool encontrado = false;

        for (Contact contacto in diary) {
          if (contacto.name.toLowerCase() ==
              nombreBuscar.toLowerCase()) {
            print('\nContacto encontrado:');
            print('Nombre: ${contacto.name}');
            print('Teléfono: ${contacto.telefono}');

            encontrado = true;
          }
        }

        if (!encontrado) {
          print('No se encontró ningún contacto con ese nombre.');
        }
        break;

      // 4. ELIMINAR CONTACTO
      case '4':
        stdout.write('Ingrese el nombre del contacto a eliminar: ');
        String nombreEliminar = stdin.readLineSync() ?? '';

        bool eliminado = false;

        for (int i = 0; i < diary.length; i++) {
          if (diary[i].name.toLowerCase() ==
              nombreEliminar.toLowerCase()) {
            diary.removeAt(i);

            print('Contacto eliminado correctamente.');
            eliminado = true;
            break;
          }
        }

        if (!eliminado) {
          print('No se encontró ningún contacto con ese nombre.');
        }
        break;

      // 5. SALIR
      case '5':
        print('Saliendo de la agenda...');
        running = false;
        break;

      default:
        print('Opción no válida. Intenta de nuevo.');
    }
  }
}
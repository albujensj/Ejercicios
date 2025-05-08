import 'dart:math'; // Importa la libreria math
import 'dart:io';

void main(){
  print('Bienvenido a nuestro sistema. Seleccione el proceso que desea realizar:\n1. Calcular la distancia recorrida por automóvil\n2. Obtener promedio de un estudiante\n3. Obtener puntaje total de un equipo\n4. Elaborar planilla de un empleado\n5. Hallar hipotenusa de un triángulo rectángulo\n6. Transformar grados Celsius a Fahrenheit\n7. Salir');
  int opcion = int.parse(stdin.readLineSync()!); // Lee la opción del usuario

  bool Bandera = true;

  while (Bandera) {
    switch (opcion) {
      case 1:
        // Calcular la distancia recorrida por automóvil
        print('Ingrese la velocidad del automóvil (km/h): ');
        double velocidad = double.parse(stdin.readLineSync()!);
        print('Ingrese el tiempo de recorrido (horas): ');
        double tiempo = double.parse(stdin.readLineSync()!);
        double distancia = velocidad * tiempo;
        print('La distancia recorrida es: $distancia km');
        break;
      case 2:
        // Obtener promedio de un estudiante
        double sumaNotas = 0;
        for (int i = 0; i < 3; i++) {
          print('Ingrese la nota ${i + 1}: ');
          double nota = double.parse(stdin.readLineSync()!);
          sumaNotas += nota;
        }
        double promedio = sumaNotas / 3;
        print('El promedio es: $promedio');
        break;
      case 3:
        // Obtener puntaje total de un equipo
        print('Ingrese el número de partidos ganados:');
        int partidosGanados = int.parse(stdin.readLineSync()!);
        print('Ingrese el número de partidos empatados:');
        int partidosEmpatados = int.parse(stdin.readLineSync()!);
        print('Ingrese el número de partidos perdidos:');
        int partidosPerdidos = int.parse(stdin.readLineSync()!);

        int puntajeTotal = (partidosGanados * 3) + (partidosEmpatados * 1) + (partidosPerdidos * 0);
        print('El puntaje total del equipo es: $puntajeTotal');

        break;
      case 4:
        // Elaborar planilla de un empleado
        print('Ingrese el nombre del empleado: ');
        String nombre = stdin.readLineSync()!;
        print('Ingrese la cantidad de horas laboradas en el mes:');
        double horasLaboradas = double.parse(stdin.readLineSync()!);
        print('Ingrese el valor por hora:');
        double valorHora = double.parse(stdin.readLineSync()!);

        double devengadoEmpleado = horasLaboradas * valorHora;
        print('El empleado $nombre ha devengado: \$${devengadoEmpleado.toStringAsFixed(2)} en el mes.');
        
        break;
      case 5:
        // Hallar hipotenusa de un triángulo rectángulo
        print('Ingrese el cateto a: ');
        double catetoA = double.parse(stdin.readLineSync()!);
        print('Ingrese el cateto b: ');
        double catetoB = double.parse(stdin.readLineSync()!);

        double hipotenusa = sqrt(pow(catetoA, 2) + pow(catetoB, 2));
        print('La hipotenusa es: $hipotenusa');
        break;
      case 6:
        // Transformar grados Celsius a Fahrenheit
        print('Ingrese la temperatura en grados Celsius: ');
        double celsius = double.parse(stdin.readLineSync()!);
        double fahrenheit = (celsius * 1.8) + 32;
        print('La temperatura en grados Fahrenheit es: $fahrenheit');
        break;
      case 7:
      Bandera = false;
      print('Gracias por usar nuestro sistema. ¡Hasta luego!');
      break;
  }
  }
}
import 'dart:math'; // Importa la libreria math
import 'dart:io';

void main (){
  print('--- calculadora de propina ---');
  print('Ingrese el total de la cuenta: ');
  double totalCuenta = double.parse(stdin.readLineSync()!);
  print('Ingrese el porcentaje de propina a agregar:');
  double porcentajePropina = double.parse(stdin.readLineSync()!);
  double propina = (totalCuenta * porcentajePropina) / 100;
  double totalConPropina = totalCuenta + propina;
  print('Ingrese la cantidad de personas que van a pagar: ');
  int cantidadPersonas = int.parse(stdin.readLineSync()!);
  double totalPorPersona = totalConPropina / cantidadPersonas;
  print('El total de la cuenta es \$${totalConPropina}. Cada persona debe pagar: \$${totalPorPersona.toStringAsFixed(2)}');
}
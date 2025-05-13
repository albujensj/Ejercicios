import 'dart:io';

void main() {
  encontrarEstudiante();
}

void encontrarEstudiante() {
  Map<String, int> Estudiantes = {
    "Sarai": 18,
    "Marcos": 10,
    "Lia": 23,
    "Kelly": 17
  };

  print("Ingresa el estudiante solicitado:");
  String nombre = stdin.readLineSync()!;

  if (Estudiantes.containsKey(nombre)) {
    print("Edad de $nombre: ${Estudiantes[nombre]} años.");
  } else {
    print("Estudiante no encontrado.");
  }
}

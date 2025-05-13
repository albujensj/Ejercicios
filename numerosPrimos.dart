import 'dart:io';

void main(){
  verificarPrimo();
}

bool esPrimo(int numero) {
  if (numero <= 1) return false;
  for (int i = 2; i <= numero ~/ 2; i++) {
    if (numero % i == 0) return false;
  }
  return true;
}

void verificarPrimo(){
  List<int> numeros = [];

  print('Bienvenido! Aquí podrás verificar qué números de tu lista son primos.\n ¿De cuántos número deseas tu lista?');
  int cantNum = int.parse(stdin.readLineSync()!);
  
  for (var i = 0; i < cantNum; i++) {
    numeros.add(i);
  }

  List<int> primos = [];
  List<int> noPrimos = [];

  for (var n in numeros) {
    if (esPrimo(n)) {
      primos.add(n);
    } else {
      noPrimos.add(n);
    }
  }

  print("Números primos: $primos");
  print("Números no primos: $noPrimos");
}
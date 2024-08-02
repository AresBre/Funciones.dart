import 'dart:io';

void main() {
  stdout.write('Ingrese el primer número: ');
  int n1 = _leerNumero();

  stdout.write('Ingrese el segundo número: ');
  int n2 = _leerNumero();

  stdout.write('Ingrese el tercer número: ');
  int n3 = _leerNumero();

  stdout.write('Ingrese el cuarto número: ');
  int n4 = _leerNumero();

  stdout.write('Ingrese el quinto número: ');
  int n5 = _leerNumero();

  int resultado = n1 * n2 * n3 * n4 * n5;

  print('El resultado de los números multiplicados es: $resultado');
}

int _leerNumero() {
  String? input = stdin.readLineSync();
  int? numero = int.tryParse(input ?? '');

  if (numero == null) {
    print('Entrada no válida. Asegúrese de ingresar un número entero.');
    exit(1);
  }

  return numero;
}

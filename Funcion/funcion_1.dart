import 'dart:io';

void main() {
  stdout.write('Ponga el primer número: ');
  int num1 = _leerNumero();

  stdout.write('Ponga el segundo número: ');
  int num2 = _leerNumero();

  stdout.write('Ponga el tercer número: ');
  int num3 = _leerNumero();

  int mayor = encontrarMayor(num1, num2, num3);
  print('El número mayor es: $mayor');
}

int encontrarMayor(int num1, int num2, int num3) {
  if (num1 > num2 && num1 > num3) {
    return num1;
  } else if (num2 > num1 && num2 > num3) {
    return num2;
  } else {
    return num3;
  }
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

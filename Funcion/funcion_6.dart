import 'dart:io';

void main() {
  stdout.write('Escriba un número mayor a cero: ');
  String? input = stdin.readLineSync();

  int num = int.tryParse(input ?? '') ?? -1;

  if (num >= 0) {
    int factorial = calcularFactorial(num);
    print('El factorial de $num es: $factorial');
  } else {
    print('Valor no permitido');
  }
}

int calcularFactorial(int num) {
  int factorial = 1;
  for (int i = 1; i <= num; i++) {
    factorial *= i;
  }
  return factorial;
}

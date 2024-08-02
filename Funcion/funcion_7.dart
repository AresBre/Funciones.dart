import 'dart:io';

void main() {
  stdout.write('Ponga el límite de rango de inicio: ');
  int inicio = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  stdout.write('Ponga el límite de rango de final: ');
  int final = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  stdout.write('Ponga un número: ');
  int num = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  if (num >= inicio && num <= final) {
    print('El número $num está dentro del límite de $inicio y $final');
  } else {
    print('El número $num está fuera del límite de $inicio y $final');
  }
}

import 'dart:io';

void main() {
  stdout.write('Ingrese una cadena de texto: ');
  String texto = stdin.readLineSync() ?? '';

  String textoInvertido = invertirCadena(texto);

  print('De la palabra: $texto');
  print('Al revés es: $textoInvertido');
}

String invertirCadena(String texto) {
  return texto.split('').reversed.join('');
}

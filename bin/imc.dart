import 'dart:io';

import 'package:imc/Classes/pessoa.dart';

void main() {
  try {
    stdout.write('Informe o nome: ');
    String nome = stdin.readLineSync()!;

    stdout.write('Informe o peso: ');
    double peso = double.parse(stdin.readLineSync()!);

    stdout.write('Informe a altura: ');
    double altura = double.parse(stdin.readLineSync()!);

    Pessoa pessoa = Pessoa(nome, peso, altura);
    double imc = pessoa.calcularIMC();

    print('IMC de ${pessoa.nome}: $imc');
  } catch (e) {
    print('Ocorreu um erro: $e');
  }
}

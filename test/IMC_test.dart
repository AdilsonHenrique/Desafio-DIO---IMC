import 'package:test/test.dart';
import 'package:imc/Classes/pessoa.dart';

void main() {
  test('Teste de cálculo de IMC', () {
    Pessoa pessoa = Pessoa('João', 75.0, 1.80);
    double expectedIMC = 23.15;
    double result = pessoa.calcularIMC();

    expect(result, closeTo(expectedIMC, 0.01));
  });
}

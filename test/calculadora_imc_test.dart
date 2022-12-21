import 'package:desafio_imc_dio/classes/calculadora_imc.dart';
import 'package:desafio_imc_dio/classes/pessoa.dart';
import 'package:desafio_imc_dio/enums/classificacao_imc_enum.dart';
import 'package:test/test.dart';

void main() {
  late CalculadoraIMC calculadoraIMC;
  setUp(() {
    calculadoraIMC = CalculadoraIMC();
  });
  test('Deve Retornar Magreza Grave', () {
    //Arrange
    const expected = ValorIMC.magrezaGrave;
    final pessoa = Pessoa("Paulo", 45, 2.0);

    //Act
    final result = calculadoraIMC.calculaIMC(pessoa);

    //Assert
    expect(result, expected);
  });
  test('Deve Retornar Magreza Moderada', () {
    //Arrange
    const expected = ValorIMC.magrezaModerada;
    final pessoa = Pessoa("Carol", 64, 2.0);

    //Act
    final result = calculadoraIMC.calculaIMC(pessoa);

    //Assert
    expect(result, expected);
  });
  test('Deve Retornar Magreza Leve', () {
    //Arrange
    const expected = ValorIMC.magrezaLeve;
    final pessoa = Pessoa("Paulo", 71, 2.0);

    //Act
    final result = calculadoraIMC.calculaIMC(pessoa);

    //Assert
    expect(result, expected);
  });
  test('Deve Retornar Saudavel', () {
    //Arrange
    const expected = ValorIMC.saudavel;
    final pessoa = Pessoa("Matteo", 95, 2.0);

    //Act
    final result = calculadoraIMC.calculaIMC(pessoa);

    //Assert
    expect(result, expected);
  });
  test('Deve Retornar Sobrepeso', () {
    //Arrange
    const expected = ValorIMC.sobrepeso;
    final pessoa = Pessoa("Rafael", 110, 2.0);

    //Act
    final result = calculadoraIMC.calculaIMC(pessoa);

    //Assert
    expect(result, expected);
  });
  test('Deve Retornar Obesidade Grau 1', () {
    //Arrange
    const expected = ValorIMC.obesidadeGrau1;
    final pessoa = Pessoa("Rafael", 134, 2.0);

    //Act
    final result = calculadoraIMC.calculaIMC(pessoa);

    //Assert
    expect(result, expected);
  });
  test('Deve Retornar Obesidade Grau 2', () {
    //Arrange
    const expected = ValorIMC.obesidadeGrau2;
    final pessoa = Pessoa("Emanuel", 156, 2.0);

    //Act
    final result = calculadoraIMC.calculaIMC(pessoa);

    //Assert
    expect(result, expected);
  });
  test('Deve Retornar Obesidade Grau 3', () {
    //Arrange
    const expected = ValorIMC.obesidadeGrau3;
    final pessoa = Pessoa("Cesar", 190, 2.0);

    //Act
    final result = calculadoraIMC.calculaIMC(pessoa);

    //Assert
    expect(result, expected);
  });
}

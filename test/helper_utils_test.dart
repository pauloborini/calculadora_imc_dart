import 'package:desafio_imc_dio/utils/helper_utils.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('Deve retornar verdadeiro para string sem número ou caracter especial',
      () {
    //Arrange
    const exemplo = "Rodolfo";
    const expected = true;
    //Act
    final result = HelperUtils.somenteNomeEspacos(exemplo);
    //Assert
    expect(result, expected);
  });
  test('Deve retornar falso para string com caracter especial', () {
    //Arrange
    const exemplo = "César!";
    const expected = false;
    //Act
    final result = HelperUtils.somenteNomeEspacos(exemplo);
    //Assert
    expect(result, expected);
  });
  test('Deve retornar falso para string com números', () {
    //Arrange
    const exemplo = "Paulo123";
    const expected = false;
    //Act
    final result = HelperUtils.somenteNomeEspacos(exemplo);
    //Assert
    expect(result, expected);
  });
}

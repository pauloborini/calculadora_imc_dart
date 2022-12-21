import 'package:desafio_imc_dio/classes/pessoa.dart';
import 'package:desafio_imc_dio/exceptions/pessoa_exceptions.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('Deveria Criar Pessoa com Sucesso', () {
    //Arrange
    const expectedNome = "Rodolfo";
    const expectedPeso = 72.0;
    const expectedAltura = 1.72;
    //Act
    final pessoa = Pessoa(expectedNome, expectedPeso, expectedAltura);

    //Assert
    expect(pessoa.getNome(), expectedNome);
    expect(pessoa.getPeso(), expectedPeso);
    expect(pessoa.getAltura(), expectedAltura);
  });
  test('Deve Retornar Exceção PessoaExpection', () {
    //Arrange
    const expectedException = TypeMatcher<PessoaException>();

    //Assert
    expect(() => Pessoa("", 0.0, 0.0), throwsA(expectedException));
  });

  test('Deve inserir novo nome', () {
    //Arrange
    const expectedNewNome = "Rafael";
    final pessoa = Pessoa("Paulo", 70, 1.7);
    //Act
    pessoa.setNome(expectedNewNome);

    expect(pessoa.getNome(), expectedNewNome);
  });

  test('Deve Retornar NomeVazioException', () {
    //Arrange
    const newNome = "";
    const expectedException = TypeMatcher<NomeNuloException>();
    final pessoa = Pessoa("Paulo", 70, 1.7);

    //Act
    expect(() => pessoa.setNome(newNome), throwsA(expectedException));
  });
  test('Deveria Retornar NomeInvalidoException', () {
    //Arrange
    const newNome = "Paulo123";
    const expectedException = TypeMatcher<NomeInvalidoException>();
    final pessoa = Pessoa("Paulo", 70, 1.7);

    //Act
    expect(() => pessoa.setNome(newNome), throwsA(expectedException));
  });
}

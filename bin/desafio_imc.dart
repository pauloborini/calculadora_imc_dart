import 'package:desafio_imc_dio/classes/calculadora_imc.dart';
import 'package:desafio_imc_dio/classes/pessoa.dart';
import 'package:desafio_imc_dio/utils/helper_utils.dart';

void main(List<String> arguments) {
  CalculadoraIMC calculadoraIMC = CalculadoraIMC();

  final nomePessoa = HelperUtils.leEntradaNomeValido(
      "Digite o seu nome: ",
      "Nome inválido, não deve conter números, caracteres especiais ou ser "
          "nulo");
  final pesoPessoa = HelperUtils.leEntradaDouble(
      "Digite o seu peso em Quilos, exemplo 70: ",
      "O peso precisa ser maior "
          "ou igual a 1",
      valorMinimo: 1);
  final alturaPessoa = HelperUtils.leEntradaDouble(
      "Digite a sua altura em metros, exemplo 1.70: ",
      "A sua altura precisa ser maior ou igual a 0.1",
      valorMinimo: 0.1);
  var pessoa = Pessoa(nomePessoa, pesoPessoa, alturaPessoa);
  print(pessoa);
  print(calculadoraIMC.calculaIMC(pessoa).value);
}

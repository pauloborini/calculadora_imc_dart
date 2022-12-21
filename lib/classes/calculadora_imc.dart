import 'package:desafio_imc_dio/classes/pessoa.dart';
import 'package:desafio_imc_dio/enums/classificacao_imc_enum.dart';

class CalculadoraIMC {
  ValorIMC calculaIMC(Pessoa pessoa) {
    final imc = pessoa.getPeso() / (pessoa.getAltura() * 2);
    if (imc < 16) {
      return ValorIMC.magrezaGrave;
    } else if (imc >= 16 && imc < 17) {
      return ValorIMC.magrezaModerada;
    } else if (imc >= 17 && imc < 18.5) {
      return ValorIMC.magrezaLeve;
    } else if (imc >= 18.5 && imc < 25) {
      return ValorIMC.saudavel;
    } else if (imc >= 25 && imc <= 30) {
      return ValorIMC.sobrepeso;
    } else if (imc >= 30 && imc < 35) {
      return ValorIMC.obesidadeGrau1;
    } else if (imc >= 35 && imc < 40) {
      return ValorIMC.obesidadeGrau2;
    } else {
      return ValorIMC.obesidadeGrau3;
    }
  }
}

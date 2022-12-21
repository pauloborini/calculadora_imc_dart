import 'dart:convert';
import 'dart:io';

class HelperUtils {
  static bool somenteNomeEspacos(String nome) {
    String regex = r"[a-zA-Zá-úÁ-Ú ]*";
    RegExp exp = RegExp(regex);
    RegExpMatch? match = exp.firstMatch(nome);
    if (match == null) {
      return false;
    } else {
      if (match[0]!.compareTo(nome) == 0) {
        return true;
      }
    }
    return false;
  }

  static double leEntradaDouble(String mensagem, String mensagemEntradaInvalida,
      {double? valorMinimo, double? valorMaximo}) {
    late double? valor;
    do {
      print(mensagem);
      var input = stdin.readLineSync(encoding: utf8);
      valor = double.tryParse(input ?? "");
      if (valor == null ||
          (valorMinimo != null && valor < valorMinimo) ||
          (valorMaximo != null && valor > valorMaximo)) {
        valor = null;
        print(mensagemEntradaInvalida);
      }
    } while (valor == null);
    return valor;
  }

  static String leEntradaNomeValido(
      String mensagem, String mensagemEntradaInvalida) {
    String? valor;
    do {
      print(mensagem);
      valor = stdin.readLineSync(encoding: utf8);
      if (valor == null || !HelperUtils.somenteNomeEspacos(valor)) {
        valor = null;
        print(mensagemEntradaInvalida);
      }
    } while (valor == null);
    return valor;
  }
}

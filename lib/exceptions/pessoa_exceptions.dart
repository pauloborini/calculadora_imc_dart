class PessoaException implements Exception {
  String error() => "Não é possivel criar a classe Pessoa";
}

class NomeInvalidoException implements Exception {
  String error() => "Inválido, deve conter letras e números";
}

class NomeNuloException implements Exception {
  String error() => "Não é possível criar sem um nome";
}

class AlturaInvalidaException implements Exception {
  String error() => "Altura inválida, deve ser maior que 0";
}

class PesoInvalidoException implements Exception {
  String error() => "Peso inválido, deve ser maior que 0";
}

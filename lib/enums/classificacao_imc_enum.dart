enum ValorIMC {
  magrezaGrave('Magreza Grave'),
  magrezaModerada('Magreza Moderada'),
  magrezaLeve('Magreza Leve'),
  saudavel('Saudável'),
  sobrepeso('Sobrepeso'),
  obesidadeGrau1('Obesidade Grau 1'),
  obesidadeGrau2('Obesidade Grau 2'),
  obesidadeGrau3('Obesidade Grau 3');

  const ValorIMC(this.value);

  final String value;
}

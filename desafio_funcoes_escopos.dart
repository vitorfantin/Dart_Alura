import 'dart:io';

void main() {
  print("#### Faço como eu fiz - Funções e Escopo  ####");
  print("------------------");

  print("Digite uma fruta: ");
  String? inputNomeFruta = stdin.readLineSync();

  print("Digite o peso desta fruta: ");
  String? inputPesoFruta = stdin.readLineSync();
  final int pesoFruta = int.parse(inputPesoFruta!);

  print("Digite quantos dias desde a colheita: ");
  String? inputQtsDiasDesdeColheita = stdin.readLineSync();
  final int qtsDiasDesdeColheita = int.parse(inputQtsDiasDesdeColheita!);

  print("Digite quantos dias para ficar madura: ");
  String? inputDiasParaMadura = stdin.readLineSync();
  final int diasParaMadura = int.parse(inputDiasParaMadura!);

  bool isMadura = funcEstamadura(qtsDiasDesdeColheita, diasParaMadura);
  print(isMadura);

  funcPrint(
      nomeFruta: inputNomeFruta,
      pesoFruta: pesoFruta,
      diasDesdeColheita: qtsDiasDesdeColheita,
      qtsDiasMadura: diasParaMadura,
      isMadura: isMadura);
}

bool funcEstamadura(int diasColheita, int diasMadura) {
  if (diasColheita >= diasMadura) {
    return true;
  } else
    return false;
}

funcPrint(
    {required String? nomeFruta,
    required int? pesoFruta,
    required int? diasDesdeColheita,
    required int? qtsDiasMadura,
    required bool? isMadura}) {
  if (isMadura == true) {
    print(
        "A $nomeFruta pesa $pesoFruta gramas! Ela foi colhida a $diasDesdeColheita e precisa de $qtsDiasMadura, logo está MADURA *-*");
  } else {
    print(
        "A $nomeFruta pesa $pesoFruta gramas! Ela foi colhida a $diasDesdeColheita e precisa de $qtsDiasMadura, logo ela NÃO está madura ! :( ");
  }
}

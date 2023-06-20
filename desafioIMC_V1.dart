import 'dart:io';

void main() {
  print("***** Olá, tudo bem ? Vamos calcular seu IMC ? :) ***** ");
  print("------------------------------------");

  print("Qual é seu nome ? ");
  final String? nome = stdin.readLineSync();

  print("Qual é a sua idade ? ");
  String? inputIdade = stdin.readLineSync();
  final int idade = int.parse(inputIdade!);


  print("Qual é o seu peso ? utilize valor inteiro ! :) ");
  String? inputPeso = stdin.readLineSync();
  final int peso = int.parse(inputPeso!);

  print("Qual é a sua altura ? utilize o ponto para casa decimal ! :)");
  String? inputAltura = stdin.readLineSync();
  final double altura = double.parse(inputAltura!);

  final resultadoIMC = peso / (altura * altura);

  print("#############################");
  print(
      "$nome, você têm $idade anos,  seu peso é $peso Kg e a sua altura $altura metros, o resultado do seu IMC foi de $resultadoIMC kg/m² ");
}

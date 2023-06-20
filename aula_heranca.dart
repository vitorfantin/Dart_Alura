void main() {
  Legumes mandioca = Legumes("Macaxeira", 1200, "Marrom", true);
  Fruta banana = Fruta("Banana", 75, "Amarela", "doce", 12);
  Nozes macadamia = Nozes("Macadamia", 2, "branco amarelado", "doce", 20, true, 35);
  Citricas laranja = Citricas("Laranja", 200, "Amarelo", "doce", 5, 32);

  mandioca.printAlimento();
  banana.printAlimento();
  macadamia.printAlimento();
  laranja.printAlimento();


  mandioca.cozinhar();
  laranja.fazerSuco();



}

class Alimento {
  String nome;
  double peso;
  String cor;

  Alimento(this.nome, this.peso, this.cor);

  void printAlimento() {
    print("Este (a) $nome pesa $peso gramas e sua cor é $cor");
  }
}

class Legumes extends Alimento {
  bool isPrecisaCozinhar;

  Legumes(String nome, double peso, String cor, this.isPrecisaCozinhar)
      : super(nome, peso, cor);

  void cozinhar() {
    if (isPrecisaCozinhar) {
      print("Pronto, o $nome está cozinhando!");
    } else {
      print("Nem precisa cozinhar !");
    }
  }
}

class Fruta extends Alimento {
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(
      String nome, double peso, String cor, this.sabor, this.diasDesdeColheita,
      {this.isMadura})
      : super(nome, peso, cor);

  void estaMadura(int diasParaMadura) {
    isMadura = diasDesdeColheita >= diasParaMadura;
    print("A sua $nome foi colhida a $diasDesdeColheita dias e precisa de"
        " $diasParaMadura dias para poder comer!"
        "Ela está madura ? $isMadura");
  }

  void fazerSuco() {
    print("Você fez um ótimo suco de $nome");
  }
}

class Citricas extends Fruta {
  double nivelDeAzedo;

  Citricas(String nome, double peso, String cor, String sabor,
      int diasDesdeColheita, this.nivelDeAzedo)
      : super(nome, peso, cor, sabor, diasDesdeColheita);

  void existeRefri(bool existe) {
    if (existe) {
      print("Existe refrigerante de $nome");
    } else {
      print("Não existe o refri de $nome");
    }
  }
}

class Nozes extends Fruta {
  double? porcentagemOleoNatura;

  Nozes(String nome, double peso, String cor, String sabor,
      int diasDesdeColheita, bool isMadura, this.porcentagemOleoNatura)
      : super(nome, peso, cor, sabor, diasDesdeColheita);
}

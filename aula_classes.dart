void main() {
  Fruta fruta01 = Fruta("Laranja", 188, "Verde", "Doce", 30);
  print(fruta01.nome);
  fruta01.estaMadura(60);
}

class Fruta {
  String nome;
  double peso;
  String cor;
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

// contrutor
  Fruta(this.nome, this.peso, this.cor, this.sabor, this.diasDesdeColheita,
      {this.isMadura});

//final construtor

  // metodo
  estaMadura(int diasParaMadura) {
    isMadura = diasDesdeColheita >= diasParaMadura;
    print(
        "A sua $nome foi colhida $diasDesdeColheita dias, e precisa de $diasParaMadura dias para poder comer. Ela está madura ? $isMadura ");
  }
//final metodo
}

void main() {
  String nome = "Laranja";
  double peso = 100.2;
  String corFruta = "Verde e amarela";
  String sabor = "Doce e cítrica";
  int diasDesdeColheita = 20;
  bool isMadura = funcEstaMadura(diasDesdeColheita);

  mostrarMadura("laranja", 30, cor: "");
}

void mostrarMadura(String nome, int dias, {String? cor = "Indefinido"}) {
  if (dias >= 30) {
    print("A $nome está madura !");
  } else {
    print("A $nome não está madura !! ");
  }
}

// abaixo exemplo de função básico
bool funcEstaMadura(int dias) {
  if (dias >= 30) {
    return true;
  } else {
    return false;
  }
}

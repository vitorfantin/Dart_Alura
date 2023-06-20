void main() {
  String nome = "Laranja";
  double peso = 100.2;
  String corFruta = "Verde e amarela";
  String sabor = "Doce e cítrica";
  int diasDesdeColheita = 20;
  bool isMadura = funcEstaMadura(diasDesdeColheita);
// escopo abaixo
  int diasFaltantes = funcQuantosDiasMadura(diasDesdeColheita);
  print(diasFaltantes);
}

// abaixo exemplo de função básico
bool funcEstaMadura(int dias) {
  if (dias >= 30) {
    return true;
  } else {
    return false;
  }
}

// escopo
int funcQuantosDiasMadura(int dias) {
  int diasParaMadura = 30;
  int qtsDiasFaltam = diasParaMadura - dias;
  return qtsDiasFaltam;
}

void main() {
  escolherMeioTransporteEnum(Transporte.skate);

}

void escolherMeioTransporteEnum(Transporte locomocao) {
  switch (locomocao) {
    case Transporte.carro:
      print("Vou viajar de carro!");
      break;
    case Transporte.bike:
      print("Vou viajar de bike !");
      break;
    case Transporte.andando:
      print("Vou viajar a pé !");
      break;
    default:
      print("Vou viajar de outro transporte !!!! !");
      break;
  }
}

enum Transporte {
  carro,
  bike,
  andando,
  skate,
  aviao,
  patins,
  trem,
}

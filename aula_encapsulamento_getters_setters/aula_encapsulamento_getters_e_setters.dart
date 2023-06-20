import 'transporteEnum.dart';
import 'viagem.dart';

void main() {
  Viagem viagemJunho = Viagem(locomocao: Transporte.aviao);

  viagemJunho.visitar("Museu");
  print(viagemJunho
      .consultarTotalLcaisVisitados); // chamando metodo get em viagem.dart

  viagemJunho.alterarLocaisVisitados =
      5; // chamando e alterando metodo var privado em set em viagem.dart
  print(viagemJunho.consultarTotalLcaisVisitados);
}

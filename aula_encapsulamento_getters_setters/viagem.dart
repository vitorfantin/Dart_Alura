import 'transporteEnum.dart';

class Viagem {
  static String codigoTrabalho = "FANTIN001";
  double dinheiro = 0;

  Transporte locomocao;

  Viagem({required this.locomocao});

  // como deixar privado
  int _totalLocaisVisitados = 0;

  //fim

  //inicialização do SET vazio
  Set<String> registrosVisitados = <String>{};

  //fim

  // Coleção MAP - inicializar
  Map<String, dynamic> registrarValor = {};

  // fim da inicialização

  printCodigo() {
    print(codigoTrabalho);
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

  void visitar(String localVisita) {
    registrosVisitados.add(localVisita);
    _totalLocaisVisitados += 1;
  }

  void registrarPrecoVisita(String local, dynamic preco) {
    registrarValor[local] = preco;
  }

  // Quando está privado precisar usar get para consultar outra variavel para somente consultar o valor da variavel privada
  int get consultarTotalLcaisVisitados {
    return _totalLocaisVisitados;
  }

//fim

  void set alterarLocaisVisitados(int novaQtd) {
    if (novaQtd < 10) {
      _totalLocaisVisitados = novaQtd;
    } else {
      print("Impossível visitar essa quantidade !");
    }
  }
}

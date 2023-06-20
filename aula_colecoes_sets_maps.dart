void main() {
  //inicialização do SET vazio
  Set<String> registrosVisitados = <String>{};
  //fim
  // Instanciando  informações
  registrosVisitados =
      registrarDestinos(destino: "Campinas", banco: registrosVisitados);
  registrosVisitados =
      registrarDestinos(destino: "Sorocaba", banco: registrosVisitados);
  registrosVisitados =
      registrarDestinos(destino: "São Pedro", banco: registrosVisitados);
  registrosVisitados =
      registrarDestinos(destino: "Campinas", banco: registrosVisitados);
  print(registrosVisitados);
  //fim

  // Coleção MAP - inicializar
  Map<String, dynamic> registrarValor = {};
  // fim da inicialização

  // registrar valor MAP
  registrarValor["Rio Claro"] = 120.10;
  registrarValor["Araras"] = 20.21;
  registrarValor["Piracicaba"] = 91.12;
  // fim

  print(registrarValor);

  //remover valor MAP
  registrarValor.remove("Araras");
  //fim

  print(registrarValor);
}

// Criação Coleção SET
Set<String> registrarDestinos(
    {required String destino, required Set<String> banco}) {
  banco.add(destino);
  return banco;
  // fim
}

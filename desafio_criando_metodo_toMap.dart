void main() {
  Pessoa pessoaVitor = Pessoa(
      nome: "Vitor",
      sobrenome: "Fantin",
      cidade: "Rio Claro",
      idade: 28,
      isEstaAtenticada: false);

  // print(pessoaVitor.nome);
  // print(pessoaVitor.sobrenome);
  // print(pessoaVitor.cidade);
  // print(pessoaVitor.idade);
  // print(pessoaVitor.isEstaAtenticada);

  Map<String, dynamic> mapPessoa = pessoaVitor.toMap();
  print(mapPessoa);
}

class Pessoa {
  String nome;
  String sobrenome;
  String cidade;
  int idade;
  bool isEstaAtenticada;

  Pessoa(
      {required this.nome,
      required this.sobrenome,
      required this.cidade,
      required this.idade,
      required this.isEstaAtenticada});

  Map<String, dynamic> toMap() {
    Map<String, dynamic> mapPessoa = {
      "Nome": nome,
      "Sobrenome": sobrenome,
      "Cidade": cidade,
      "Idade": idade,
      "Acesso liberado?": isEstaAtenticada
    };
    return mapPessoa;
  }
}

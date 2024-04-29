class Produtos {
  String nome;
  String categoria;
  double preco;
//interoperabilidade json, mongoDB
  Produtos({
    required this.nome,
    required this.preco,
    required this.categoria,
  });

  //mapeando as informações
  Map<String, dynamic> toJson() {//o map não tem indice, diferente da lista, indice(posição)
    return {
      'nome': nome,
      'preco': preco,
      'categoria': categoria
    };
  }

  factory Produtos.fromJson(Map<String, dynamic> json){
    return Produtos(
      nome: json['nome'],
      preco:json['preco'],
      categoria: json['categoria'],
    );
  }
}

class Produtos {
  String nome;
  String preco;
  String categoria;

  Produtos({
    required this.nome,
    required this.preco,
    required this.categoria,
  });

  //mapeando as informações
  Map<String, dynamic> toMap() {
    return {
      'nome': nome,
      'preco': preco,
      'categoria': categoria
    };
  }

  factory Produtos.fromMap(Map<String, dynamic> map){
    return Produtos(
      nome: map['nome'],
      preco:map['preco'],
      categoria: map['categoria'],
    );
  }
}

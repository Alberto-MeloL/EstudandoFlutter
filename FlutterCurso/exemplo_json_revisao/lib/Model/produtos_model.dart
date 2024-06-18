class Produto {
  final String nome;
  final int preco;
  final String categoria;
  final String foto;
  final String? id;

  Produto({
    required this.nome,
    required this.preco,
    required this.categoria,
    required this.foto,
    this.id,
  });

  factory Produto.fromJson(Map<String, dynamic> json) {
    return Produto(
      nome: json['nome'],
      preco: json['preco'],
      categoria: json['categoria'],
      foto: json['foto'],
      id: json['id'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'nome': nome,
      'preco': preco,
      'categoria': categoria,
      'foto': foto,
      'id': id,
    };
  }
}

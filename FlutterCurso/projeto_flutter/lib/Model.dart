class DadosCadastro {
  int id = 0;
  String nome = "";
  String email = "";
  String senha = "";

  DadosCadastro(
      {required this.id,
      required this.nome,
      required this.email,
      required this.senha});

  Map<String, dynamic> toMap() {
    return {'id': id, 'nome': nome, 'email': email, 'senha': senha};
  }
}

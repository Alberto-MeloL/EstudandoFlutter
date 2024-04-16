class Usuario {
  late int id;
  String idade;
  String nome;
  String email;
  String senha;

  Usuario({
    required id,
    required this.idade,
    required this.nome,
    required this.email,
    required this.senha,
  });

  //mapeando as informações
  Map<String, dynamic> toMap() {
    return {
      'idade': idade,
      'nome': nome,
      'email': email,
      'senha': senha
    };
  }

  factory Usuario.fromMap(Map<String, dynamic> map){
    return Usuario(

      id:map['id'],
      idade: map['idade'],
      nome:map['nome'],
      email:map['email'],
      senha: map['senha'],
    );
  }
}

void main() {

  // ---------------------NÚMEROS------------------------
  // Declaração explícita
  int idade = 30;
  double altura = 1.75;

  // Declaração implícita
  var peso = 70; // Dart infere que é um int
  var temperatura = 36.5; // Dart infere que é um double

  // Usando os números
  print("Idade: $idade");
  print("Altura: $altura");
  print("Peso: $peso");
  print("Temperatura: $temperatura");
  // -----------------------------------------------------

  // ---------------------TEXTOS--------------------------
  // Declaração explícita
  String nome = "João";

  // Declaração implícita
  var cidade = "São Paulo";
  // Dart infere que é uma String

  // Usando os textos
  print("Nome: $nome");
  print("Cidade: $cidade");
  // -----------------------------------------------------

  // ---------------------BOOLEAN-------------------------
  // Declaração explícita
  bool isAtivo = true;

  // Declaração implícita
  var isAdmin = false; // Dart infere que é um bool

  // Usando os booleanos
  print("Usuário ativo: $isAtivo");
  print("Usuário é admin: $isAdmin");
  // -----------------------------------------------------

  // ----------------------LISTA--------------------------
  // Declaração explícita
  List<int> numeros = [1, 2, 3, 4];

  // Declaração implícita
  var frutas = ['maçã', 'banana', 'laranja'];
  // Dart infere que é uma List<String>

  // Usando as listas
  print("Números: $numeros");
  print("Frutas: $frutas");
  // -----------------------------------------------------

  // ----------------------MAPAS-------------------------------------
  // Declaração explícita
  Map<String, int> idades = {'João': 30, 'Maria': 25};

  // Declaração implícita
  var produtos = {'nome': 'Camiseta', 'preco': 29.99};
  // Dart infere que é um Map<String, dynamic>

  // Usando os mapas
  print("Idades: $idades");
  print("Produto: ${produtos['nome']}, Preço: ${produtos['preco']}");
  // ----------------------------------------------------------------

  // ---------------------CONJUNTOS------------------------------
  // Declaração explícita
  Set<String> cores = {'vermelho', 'verde', 'azul'};

  // Declaração implícita
  var cidades = {'Rio de Janeiro', 'São Paulo', 'Belo Horizonte'};
  // Dart infere que é um Set<String>

  // Usando os conjuntos
  print("Cores: $cores");
  print("Cidades: $cidades");
  // ---------------------------------------------------------------

  // ---------------------NULABILIDADE------------------------------
  // Declaração explícita
  String? sobrenome; // O '?' indica que a variável pode ser nula.

  // Declaração implícita
  var endereco; // Dart infere que é dynamic e pode ser nulo.

  // Usando a nulabilidade
  sobrenome = "Silva"; // Atribuindo um valor
  print("Sobrenome: $sobrenome");
  print("Endereço: $endereco"); // Não atribuímos valor, então é null
  // ----------------------------------------------------------------
}

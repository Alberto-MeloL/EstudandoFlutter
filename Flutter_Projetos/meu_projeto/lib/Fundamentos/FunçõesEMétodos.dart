void main() {
  // --------------------- FUNÇÕES -------------------------
  
  // Função que soma dois números e retorna o resultado
  int somar(int a, int b) {
    return a + b;
  }

  // Usando a função somar
  int resultadoSoma = somar(3, 5);
  print("Resultado da soma: $resultadoSoma");

  // Função com parâmetros opcionais posicionais
  void apresentar(String nome, [int idade = 18]) {
    print("Nome: $nome, Idade: $idade");
  }

  // Usando a função apresentar
  apresentar("João"); // Usando valor padrão
  apresentar("Maria", 25); // Especificando idade

  // Função com parâmetros opcionais nomeados
  void apresentarNomeado({required String nome, int? idade}) {
    print("Nome: $nome, Idade: ${idade ?? 'não informada'}");
  }

  // Usando a função apresentar com parâmetros nomeados
  apresentarNomeado(nome: "João");
  apresentarNomeado(nome: "Maria", idade: 25);

  // --------------------- FUNÇÕES ANÔNIMAS -------------------------
  
  // Função anônima para multiplicar
  var multiplicar = (int a, int b) {
    return a * b;
  };

  // Usando a função anônima
  int resultadoMultiplicacao = multiplicar(3, 4);
  print("Resultado da multiplicação: $resultadoMultiplicacao");

  // --------------------- FUNÇÕES DE ORDEM SUPERIOR -------------------------
  
  // Função de ordem superior que executa uma operação
  void executarOperacao(int a, int b, Function operacao) {
    int resultado = operacao(a, b);
    print("Resultado da operação: $resultado");
  }

  // Usando a função de ordem superior
  executarOperacao(5, 3, (x, y) => x - y); // Passando uma função anônima
  
  // Usando o método da classe Calculadora
  var calc = Calculadora();
  int resultadoCalc = calc.somar(4, 6);
  print("Resultado da soma (método): $resultadoCalc");
}

// --------------------- MÉTODOS -------------------------
  
  // Classe com método que soma dois números
  class Calculadora {
    int somar(int a, int b) {
      return a + b;
    }
  }

  
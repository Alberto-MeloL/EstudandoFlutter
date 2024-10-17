void main() {
  
  // --------------------- CRIAÇÃO DE OBJETOS -------------------------
  
  // Criando instâncias da classe Carro
  var carro1 = Carro("Fusca", "azul", 1969);
  var carro2 = Carro("Civic", "preto", 2020);

  // --------------------- USANDO MÉTODOS -------------------------
  
  // Chamando o método para exibir informações dos carros
  carro1.exibirInfo();
  carro2.exibirInfo();



  // Criando uma instância da classe Moto
  var moto1 = Moto("Harley", "preto", 2021, false);

  // Usando o método da moto
  moto1.exibirInfo();
}
// --------------------- DEFINIÇÃO DA CLASSE -------------------------
  
  // Classe Carro
  class Carro {
    // Atributos
    String modelo;
    String cor;
    int ano;

    // Construtor
    Carro(this.modelo, this.cor, this.ano);

    // Método para exibir informações do carro
    void exibirInfo() {
      print("Modelo: $modelo, Cor: $cor, Ano: $ano");
    }
  }

  // --------------------- HERANÇA -------------------------
  
  // Classe Moto que herda de Carro
  class Moto extends Carro {
    // Atributo adicional
    bool temSidecar;

    // Construtor
    Moto(String modelo, String cor, int ano, this.temSidecar) 
        : super(modelo, cor, ano);

    // Método para exibir informações da moto
    @override
    void exibirInfo() {
      super.exibirInfo(); // Chama o método da classe pai
      print("Tem sidecar: ${temSidecar ? 'Sim' : 'Não'}");
    }
  }
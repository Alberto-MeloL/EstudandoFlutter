void main() {
  int idade = 18;

  // Estrutura if
  if (idade >= 18) {
    print("Você é maior de idade.");
  } else {
    print("Você é menor de idade.");
  }

   int nota = 85;

  if (nota >= 90) {
    print("Nota A");
  } else if (nota >= 80) {
    print("Nota B");
  } else if (nota >= 70) {
    print("Nota C");
  } else {
    print("Nota D ou F");
  }

   for (int i = 0; i < 5; i++) {
    print("Número: $i");
  }

  int contador = 0;

  while (contador < 5) {
    print("Contador: $contador");
    contador++;
  }

  int contador2 = 0;

  do {
    print("Contador: $contador");
    contador++;
  } while (contador < 5);

 List<String> frutas = ['maçã', 'banana', 'laranja'];

  // Usando forEach para iterar sobre a lista
  frutas.forEach((fruta) {
    print("Fruta: $fruta");
  });

}

import 'package:projeto_json/Model/livros_model.dart';

class LivrosController{
  List<Livros> _listLivros = [];//lista privada

  //get
  List<Livros> get listLivros => _listLivros;

//métodos
void addLivros(Livros livros) {
_listLivros.add(livros);
}
//está funcionando localmente, pois ainda não foi feita a persistência

//métodos do json (salvar/carregar)


}
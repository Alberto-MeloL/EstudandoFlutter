import 'package:flutter/material.dart';
import '../Controller/produtos_controller.dart';
import 'produto_info_view.dart';
import '../Model/produtos_model.dart';

class ProdutosPage extends StatefulWidget {
  const ProdutosPage({super.key});

  @override
  State<ProdutosPage> createState() => _ProdutosPageState();
}

class _ProdutosPageState extends State<ProdutosPage> {
  ProdutosController controller = ProdutosController();
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    controller.loadProdutos().then((_) {
      setState(() {
        isLoading = false;
      });
    });
  }

  void _showAddProdutoDialog(BuildContext context) {
    String nome = '';
    int preco = 0;
    String categoria = '';
    String foto = '';

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Adicionar Produto'),
          content: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(labelText: 'Nome'),
                  onChanged: (value) {
                    nome = value;
                  },
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Preço'),
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    preco = int.tryParse(value) ?? 0;
                  },
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Categoria'),
                  onChanged: (value) {
                    categoria = value;
                  },
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Foto URL'),
                  onChanged: (value) {
                    foto = value;
                  },
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Cancelar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Adicionar'),
              onPressed: () {
                final novoProduto = Produto(
                  nome: nome,
                  preco: preco,
                  categoria: categoria,
                  foto: foto,
                );
                setState(() {
                  controller.addProduto(novoProduto);
                });
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lista Produtos"),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => _showAddProdutoDialog(context),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: controller.produtos.reversed.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(controller.produtos[index].nome),
                    subtitle: Text(controller.produtos[index].categoria),
                    trailing: IconButton(
                      icon: Icon(Icons.delete, color: Colors.red),
                      onPressed: () {
                        setState(() {
                          controller.deleteProduto(index);
                        });
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("${controller.produtos[index].nome} deletado"),
                          ),
                        );
                      },
                    ),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProdutoInfoPage(
                          info: controller.produtos[index], controller: controller,
                        ),
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }
}

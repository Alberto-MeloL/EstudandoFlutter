import 'package:flutter/material.dart';

void main() {
  return runApp(const TabBarApp());
}

class TabBarApp extends StatelessWidget {
  const TabBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const TabBarExemple(),
    );
  }
}

class TabBarExemple extends StatelessWidget {
  const TabBarExemple({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar'),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.message),
              ),
              Tab(
                icon: Icon(Icons.image),
              ),
              Tab(
                icon: Icon(Icons.logo_dev),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[//elementos
            Center(
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(labelText: 'Nome',
                    ),
                  ), TextField(
                    decoration: InputDecoration(labelText: 'Email'),
                  ), TextField(
                    decoration: InputDecoration(labelText: 'Mensagem'),
                  ),

                ],
              ),
            ),
             Center(
          child: Icon(Icons.abc),
        
              
            ),

            Center(child: Text('o'),)
          ],
        ),
      ),
    );
  }
}

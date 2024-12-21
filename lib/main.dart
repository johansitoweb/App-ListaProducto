import 'package:flutter/material.dart';

void main() => runApp(const ProductListApp());

class ProductListApp extends StatelessWidget {
  const ProductListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const ProductListExample(),
    );
  }
}

class ProductListExample extends StatelessWidget {
  const ProductListExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lista de Productos')),
      body: ListView(
        children: const <Widget>[
          Card(child: ListTile(title: Text('Producto 1: Zapatillas deportivas'))),
          Card(
            child: ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text('Producto 2: Camiseta de algodón'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Producto 3: Reloj inteligente'),
              trailing: Icon(Icons.more_vert),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.shopping_bag),
              title: Text('Producto 4: Mochila de viaje'),
              trailing: Icon(Icons.more_vert),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Producto 5: Auriculares inalámbricos'),
              dense: true,
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.smartphone, size: 56.0),
              title: Text('Producto 6: Smartphone último modelo'),
              subtitle: Text('Con cámara de 108MP y 5G'),
              trailing: Icon(Icons.more_vert),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.laptop, size: 72.0),
              title: Text('Producto 7: Laptop para gaming'),
              subtitle: Text('Rendimiento extremo para jugadores.'),
              trailing: Icon(Icons.more_vert),
              isThreeLine: true,
            ),
          ),
        ],
      ),
    );
  }
}

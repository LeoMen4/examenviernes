import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 255, 105, 218)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Nombre:'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Stack(
        children: <Widget>[
          // Add the background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https://p325k7wa.twic.pics/high/dragon-ball/dragonball-project-z/00-page-setup/dbzk_game-thumbnail.jpg?twic=v1/step=10/quality=80/max=760'
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Text on top (optional, adjust position as needed)
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Leonardo Mena Landa',
              style: const TextStyle(
                fontSize: 45,
                color: Color.fromARGB(255, 228, 72, 72),
              ),
            ),
          ),

          // Existing FAB with functionality (bottom right)
          Positioned(
            bottom: 20.0,
            right: 20.0,
            child: FloatingActionButton(
              onPressed: () {
                print('Existing FAB pressed!');
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text('¡Botón existente presionado!'),
                  ),
                );
              },
              child: const Icon(Icons.add),
            ),
          ),

          // New FAB with customization (bottom left)
          Positioned(
            bottom: 20.0,  // Adjust position as needed
            left: 20.0,   // Adjust position as needed
            child: FloatingActionButton(
              onPressed: () {
                print('New FAB pressed!');
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text('¡Nuevo botón presionado!'),
                  ),
                );
              },
              child: const Icon(Icons.menu), // You can change the icon here
            ),
          ),
        ],
      ),
    );
  }
}
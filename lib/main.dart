import 'package:flutter/material.dart';

void main() => runApp(const AppLibreria());

class AppLibreria extends StatelessWidget {
  const AppLibreria({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Librería Ailin',
      home: SeccionesLibreria(),
    );
  }
}

class SeccionesLibreria extends StatelessWidget {
  const SeccionesLibreria({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Librería Ailin - Gallegos 6 J',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 141, 196, 241),
        leading: const Icon(
          Icons.book, // Icono de libro para la librería
          color: Colors.black,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.bookmark_add, color: Color.fromARGB(255, 212, 14, 14)),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart, color: Color.fromARGB(255, 12, 11, 0)),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // Elemento 1: Ficción
          Card(
            elevation: 3,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: ListTile(
              leading: const CircleAvatar(
                backgroundColor: Color(0xFFE3F2FD),
                child: Icon(Icons.auto_stories, color: Colors.blue),
              ),
              title: const Text('Novelas de Ficción', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: const Text('Mundos imaginarios y aventuras'),
              trailing: const Icon(Icons.chevron_right, color: Colors.blue),
              onTap: () => print('Sección Ficción'),
            ),
          ),

          const SizedBox(height: 10),

          // Elemento 2: Educación
          Card(
            elevation: 3,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: ListTile(
              leading: const CircleAvatar(
                backgroundColor: Color(0xFFF3E5F5),
                child: Icon(Icons.menu_book, color: Colors.purple),
              ),
              title: const Text('Libros de Texto', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: const Text('Material para estudio y escuela'),
              trailing: const Icon(Icons.chevron_right, color: Colors.purple),
              onTap: () => print('Sección Educación'),
            ),
          ),

          const SizedBox(height: 10),

          // Elemento 3: Historia
          Card(
            elevation: 3,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: ListTile(
              leading: const CircleAvatar(
                backgroundColor: Color(0xFFFFF3E0),
                child: Icon(Icons.history_edu, color: Colors.orange),
              ),
              title: const Text('Historia Universal', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: const Text('Relatos del pasado'),
              trailing: const Icon(Icons.chevron_right, color: Colors.orange),
              onTap: () => print('Sección Historia'),
            ),
          ),

          const SizedBox(height: 10),

          // Elemento 4: Niños
          Card(
            elevation: 3,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: ListTile(
              leading: const CircleAvatar(
                backgroundColor: Color(0xFFE8F5E9),
                child: Icon(Icons.child_care, color: Colors.teal),
              ),
              title: const Text('Cuentos Infantiles', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: const Text('Lecturas para los más pequeños'),
              trailing: const Icon(Icons.chevron_right, color: Colors.teal),
              onTap: () => print('Sección Infantil'),
            ),
          ),
        ],
      ),
    );
  }
}
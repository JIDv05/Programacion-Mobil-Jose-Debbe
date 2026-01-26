import 'package:flutter/material.dart';

void main() {
  runApp(const MiPrimeraApp());
}

class MiPrimeraApp extends StatelessWidget {
  const MiPrimeraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mi Primera App Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PerfilPersonal(),
    );
  }
}

class PerfilPersonal extends StatelessWidget {
  const PerfilPersonal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil Personal'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage(''),
                ),
                const SizedBox(height: 20),

                const Text(
                  'Iván Pa',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),

                const SizedBox(height: 8),

                const Text(
                  'Ingeniería en Informática',
                  style: TextStyle(
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                    color: Colors.blueGrey,
                  ),
                ),

                const SizedBox(height: 12),

                const Text(
                  '¡Bienvenido a mi primera app en Flutter!',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.green,
                  ),
                ),

                const SizedBox(height: 20),

                const Icon(
                  Icons.person,
                  size: 40,
                  color: Colors.blue,
                ),

                const SizedBox(height: 20),

                Card(
                  elevation: 4,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: const Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Text(
                          'Información Adicional',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text('Ciudad: La Ceiba'),
                        Text('Edad: 20 años'),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                const Text(
                  'Mis hobbies:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                Column(
                  children: const [
                    ListTile(
                      leading: Icon(Icons.check),
                      title: Text('Programar'),
                    ),
                    ListTile(
                      leading: Icon(Icons.check),
                      title: Text('Jugar videojuegos'),
                    ),
                    ListTile(
                      leading: Icon(Icons.check),
                      title: Text('Escuchar música'),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Gracias por visitar mi app'),
                      ),
                    );
                  },
                  child: const Text('Presióname'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

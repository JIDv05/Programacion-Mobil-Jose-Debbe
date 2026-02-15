import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Aplicación principal
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Citas Médicas',
      home: const HomeScreen(),
    );
  }
}

// Pantalla principal
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Barra superior
      appBar: AppBar(
        title: const Text("Consulta Doctor Simi"),
        backgroundColor: Colors.purple,
      ),

      body: SafeArea(
        child: Stack(
          children: [
          
            Padding(
              padding: const EdgeInsets.all(12),

              // Column organiza verticalmente toda la pantalla
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Cita
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.lightGreen[100],
                      borderRadius: BorderRadius.circular(12),
                    ),

                    // Row para organizar la información horizontalmente
                    child: Row(
                      children: [
                        const Icon(Icons.calendar_month, size: 40),

                        const SizedBox(width: 10),

                        
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Siguiente cita",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              Text("Dra. Laura"),
                              Text("02/25/2026"),
                            ],
                          ),
                        ),

                        ElevatedButton(
                          onPressed: () {},
                          child: const Text("Ver"),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 15),

                  const SizedBox(height: 10),

                  // porque permite distribuir acciones principales en bloques iguales
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      children: [
                        // Agendar cita
                        quickButton(Icons.add_circle, "Agendar Cita"),

                        // Historial
                        quickButton(Icons.history, "Historial"),

                        // Notificaciones
                        quickButton(Icons.notifications, "Notificaciones"),

                        // Perfil
                        quickButton(Icons.person, "Perfil"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      // Boton de acceso rapido 
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inicio"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Perfil"),
        ],
      ),
    );
  }
}

// botones grandes
Widget quickButton(IconData icon, String text) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.lightGreen[30],
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: Colors.lightGreen),
    ),

    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 40, color: Colors.lightGreen),
        const SizedBox(height: 10),
        Text(text, textAlign: TextAlign.center),
      ],
    ),
  );
}

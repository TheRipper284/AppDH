import 'package:flutter/material.dart';
import 'package:integradora2/screens/inifite_list_screen.dart';
import 'package:integradora2/screens/inputs_screen.dart';
import 'package:integradora2/screens/notifications_screen.dart';
import 'package:integradora2/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bienvenido a Dog Health'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Image.asset('corazon.png'),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const InputsScreen()),
                );
              },
              child: Container(
                margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.all(20),
                width: double.infinity,
                color: Colors.grey[100],
                child: const Text(
                  'Pulso Cardiaco',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
            const Divider(),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const InfiniteListScreen()),
                );
              },
              child: Container(
                margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.all(20),
                width: double.infinity,
                color: Colors.grey[100],
                child: const Text(
                  'Temperatura',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
            const Divider(),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NotificationsScreen()),
                );
              },
              child: Container(
                margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.all(20),
                width: double.infinity,                
                color: Colors.grey[100],
                child: const Text(
                  'Ubicación',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

      body: ListView(
        children: [
          SizedBox(
            height: 170.0,
            width: 160.0,
            child: Image.asset('assets/perrito_saludando.jpg'),
          ),
          ListTile(
            title: Column(children: [
              Text(
                'Hola y bienvenido a Dog Health',
                style: AppTheme.lightTheme.textTheme.headlineLarge,
              ),
              const SizedBox(
                height: 16.5,
              ),
            ]),
            subtitle: Text(
              'Hola usuario. En esta aplicación podrás cuidar a tu mascota dependiendo de su temperatura corporal, pulso cardiaco y también podrás visualizar su ubicación por si se llegara a extraviar',
              style: AppTheme.lightTheme.textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}

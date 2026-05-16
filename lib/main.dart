import 'package:flutter/material.dart';

void main() {
  runApp(const MollyBreedingManagerApp());
}

class MollyBreedingManagerApp extends StatelessWidget {
  const MollyBreedingManagerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Molly Breeding Manager',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final breeders = [
      {'code': 'BGD-01', 'strain': 'Black Gold Dust', 'next': '7 Juni 2026', 'days': 22},
      {'code': 'SSF-02', 'strain': 'Super Sailfin', 'next': '29 Mei 2026', 'days': 13},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Molly Breeding Manager')),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Statistik', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  Text('Total Indukan: 12'),
                  Text('Total Burayak: 1.240 ekor'),
                  Text('Reminder Aktif: 8'),
                ],
              ),
            ),
          ),
          const SizedBox(height: 12),
          ...breeders.map((b) => Card(
            child: ListTile(
              leading: const CircleAvatar(child: Icon(Icons.pets)),
              title: Text('${b['code']} - ${b['strain']}'),
              subtitle: Text('Perkiraan lahiran berikutnya: ${b['next']}'),
              trailing: Text('${b['days']} hari'),
            ),
          )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}

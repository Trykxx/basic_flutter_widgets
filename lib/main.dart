import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp(appTitle: "Les Widgets basiques",));
}

// Classe qui hérite de Stateless
class MyApp extends StatelessWidget {
  final String appTitle;
  // Constructeur
  const MyApp({super.key, required this.appTitle});

  // This widget is the root of your application.
  // Build va construire le visuel de l'application, il retourne un widget (MaterialApp)
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Titre a but descriptif de l'application
      title: appTitle,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true
      ),
      darkTheme: ThemeData.dark(useMaterial3: true),
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
// Propriété de ma classe Stateless
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: const Icon(Icons.home),
        actions: const [
            Icon(Icons.person),
            Icon(Icons.access_time)
        ],
        bottom: const PreferredSize(
            preferredSize: Size.fromHeight(24), 
            child: Text("Salut les codeurs")
        ),
        backgroundColor: Colors.blue,
        elevation: 8, // Fait un boxshadow mais on le voit pas sur useMaterial 3
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          color: Colors.blue, // Entre en conflit avec la couleur de la BoxDecoration
          height: 128,
          width: 228,
          alignment: Alignment.center,
          margin: const EdgeInsets.all(16),
          padding: const EdgeInsets.all(16),
          child: const Text("Test"),
        )
      )
    );
  }
}
import 'package:flutter/material.dart';
import 'package:gallery_app_3000/features/gallery/screens/gallery_screen.dart';
import 'package:gallery_app_3000/features/profile/profile_screen.dart';

void main() {
  runApp(const HomeApp());
}

class HomeApp extends StatefulWidget {
  const HomeApp({super.key});

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  int currentIndex = 0;

  List<Widget> screens = const [GalleryScreen(), ProfileScreen()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: AppBar(
          actionsIconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.deepPurple,
          elevation: 2,
          shadowColor: Colors.grey,
          title: const Text(
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
              "Gallery 3000"),
        ),
        body: screens[currentIndex],
        bottomNavigationBar: NavigationBar(
            backgroundColor: Colors.deepPurple.shade100,
            indicatorColor: Colors.deepPurple.shade200,
            selectedIndex: currentIndex,
            onDestinationSelected: (int index) {
              currentIndex = index;
              setState(() {});
            },
            destinations: const [
              NavigationDestination(
                  icon: Icon(Icons.list_alt_outlined), label: "Galerie"),
              NavigationDestination(icon: Icon(Icons.person), label: "Profil"),
            ]),
      ),
    );
  }
}



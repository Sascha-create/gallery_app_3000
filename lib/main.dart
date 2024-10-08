import 'package:flutter/material.dart';
import 'package:gallery_app_3000/features/gallery/gallery_card.dart';
import 'package:gallery_app_3000/features/gallery/screens/gallery_screen.dart';
import 'package:gallery_app_3000/features/profile/profile_screen.dart';
import 'features/gallery/gallery_item.dart';
import 'features/gallery/gallery_data.dart';

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

  List<Widget> screens = [GalleryScreen(), ProfileScreen()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: const Text(
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
              "Gallery 3000"),
        ),
        body: screens[currentIndex],
        bottomNavigationBar: NavigationBar(
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

import 'package:flutter/material.dart';
import 'package:gallery_app_3000/features/gallery/gallery_card.dart';
import 'features/gallery/gallery_item.dart';
import 'features/gallery/gallery_data.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: const Text(
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
              "Gallery 3000"),
        ),
        body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) =>
              GalleryCard(galleryItem: galleryData[index]),
          itemCount: galleryData.length,
        ),
        bottomNavigationBar: NavigationBar(destinations: const [
          NavigationDestination(
              icon: Icon(Icons.list_alt_outlined), label: "Galerie"),
          NavigationDestination(icon: Icon(Icons.person), label: "Profil"),
        ]),
      ),
    );
  }
}

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(galleryData[index].imagePath),
        Text(galleryData[index].imageTitle),
        Text(galleryData[index].imageDate),
        Text(galleryData[index].imageDescription),
      ],
    );
  }
}

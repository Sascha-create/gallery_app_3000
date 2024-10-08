import 'package:flutter/material.dart';
import 'package:gallery_app_3000/features/gallery/gallery_item.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.galleryItem});

  final GalleryItem galleryItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
            style: TextStyle(
                fontSize: 28, fontWeight: FontWeight.w700, color: Colors.white),
            "Details"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          
          children: [
            SizedBox(height: 320, child: Image.asset(galleryItem.imagePath)),
            Text(
                style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
                galleryItem.imageTitle),
            Text(
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                galleryItem.imageDate),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                  style: const TextStyle(fontSize: 16), galleryItem.imageDescription),
            ),
          ],
        ),
      ),
    );
  }
}

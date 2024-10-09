import 'package:flutter/material.dart';
import 'package:gallery_app_3000/features/gallery/models/gallery_item.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.galleryItem});

  final GalleryItem galleryItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
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
            SizedBox(
                height: 400,
                width: double.infinity,
                child: Image.asset(fit: BoxFit.cover, galleryItem.imagePath)),
            Text(
                style:
                    const TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
                galleryItem.imageTitle),
            Text(
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                galleryItem.imageDate),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                  style: const TextStyle(fontSize: 16),
                  galleryItem.imageDescription),
            ),
          ],
        ),
      ),
    );
  }
}

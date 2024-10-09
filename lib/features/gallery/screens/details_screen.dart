import 'package:flutter/material.dart';
import 'package:gallery_app_3000/features/gallery/models/gallery_item.dart';
import 'package:gallery_app_3000/features/gallery/screens/image_full_screen.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.galleryItem});

  final GalleryItem galleryItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade600,
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
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(children: [
            SizedBox(
                height: 400,
                width: double.infinity,
                child: Image.asset(fit: BoxFit.cover, galleryItem.imagePath)),
            Positioned(
                bottom: 8,
                right: 8,
                child: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  ImageFullScreen(galleryItem: galleryItem)));
                    },
                    icon: const Icon(
                        size: 48, color: Colors.white, Icons.fullscreen)))
          ]),
          Text(
              style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
              galleryItem.imageTitle),
          Text(
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
              galleryItem.imageDate),
          Divider(
            indent: 16,
            endIndent: 16,
            color: Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
                style: const TextStyle(fontSize: 16, color: Colors.white),
                galleryItem.imageDescription),
          ),
        ],
      ),
    );
  }
}

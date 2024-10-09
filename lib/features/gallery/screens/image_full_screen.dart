import 'package:flutter/material.dart';
import 'package:gallery_app_3000/features/gallery/models/gallery_item.dart';

class ImageFullScreen extends StatelessWidget {
  const ImageFullScreen({super.key, required this.galleryItem});
  final GalleryItem galleryItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
          child: Stack(children: [
        SizedBox(
            height: double.infinity,
            child: Image.asset(fit: BoxFit.cover, galleryItem.imagePath)),
        Positioned(
            top: 8,
            left: 8,
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                    size: 32, color: Colors.white, Icons.arrow_back_ios)))
      ])),
    );
  }
}

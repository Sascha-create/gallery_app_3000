import 'package:flutter/material.dart';
import 'package:gallery_app_3000/features/gallery/gallery_card.dart';
import 'package:gallery_app_3000/features/gallery/gallery_data.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) =>
          GalleryCard(galleryItem: galleryData[index]),
      itemCount: galleryData.length,
    );
  }
}

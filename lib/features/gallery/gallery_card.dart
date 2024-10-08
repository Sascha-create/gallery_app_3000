import 'package:flutter/material.dart';
import 'package:gallery_app_3000/features/gallery/gallery_data.dart';
import 'package:gallery_app_3000/features/gallery/gallery_item.dart';
import 'package:gallery_app_3000/main.dart';

class GalleryCard extends StatelessWidget {
  const GalleryCard({
    super.key,
    required this.galleryItem,
  });

  final GalleryItem galleryItem;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
          child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
              //     constraints: BoxConstraints(
              //         maxWidth: double.infinity, maxHeight: double.maxFinite),
              height: 170,
              child: Image.asset(fit: BoxFit.contain, galleryItem.imagePath)),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(galleryItem.imageTitle),
          ),
        ],
      )),
    );
  }
}

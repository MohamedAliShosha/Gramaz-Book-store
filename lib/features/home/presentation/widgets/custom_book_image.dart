import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      //
      borderRadius: BorderRadius.circular(16),
      // cached network image is used to cache the image and load it faster
      child: CachedNetworkImage(
        errorWidget: (context, url, error) => const Icon(Icons.warning),
        fit: BoxFit.fill,
        imageUrl: imageUrl,
      ),
    );
  }
}

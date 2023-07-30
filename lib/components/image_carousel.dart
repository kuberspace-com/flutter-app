import 'package:flutter/material.dart';

class ImageCarousel extends StatefulWidget {
  final List<String> images;

  const ImageCarousel({
    Key? key, // Add the Key parameter to the constructor
    required this.images,
  }) : super(key: key);

  @override
  State<ImageCarousel> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  @override
  Widget build(BuildContext context) {
    if (widget.images.isEmpty) {
      throw Exception("must have at least one image");
    }

    return ListView(
      scrollDirection: Axis.horizontal,
      children: widget.images.map((image) {
        return Container(
          width: MediaQuery.of(context).size.width,
          child: Card(
            child: Image.asset(image, fit: BoxFit.cover),
          ),
        );
      }).toList(),
    );
  }
}
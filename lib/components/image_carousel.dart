import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageCarousel extends StatefulWidget {
  final List<String> images;

  ImageCarousel({required this.images});

  @override
  _ImageCarouselState createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  final ScrollController _scrollController = ScrollController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
         return  Stack(
           fit: StackFit.loose,
        alignment: Alignment.center,
        children: [
          ListView.builder(
            controller: _scrollController,
            scrollDirection: Axis.horizontal,
            itemCount: widget.images.length,
            itemBuilder: (context, index) {
              return SizedBox(
                width: constraints.maxWidth,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image.asset(widget.images[index], fit: BoxFit.cover, width: constraints.maxWidth),
                ),
              );
            },
          ),
          Positioned(
            left: 0,
            child: IconButton(
              alignment: Alignment.center,
              onPressed: () {
                scrollBackImage(constraints);
              },
              icon: Icon(Icons.arrow_back_ios, color: Colors.white),
            ),
          ),
          Positioned(
            right: 0,
            child: IconButton(
              alignment: Alignment.center,
              onPressed: () {
                scrollToNextImage(constraints);
              },
              icon: Icon(Icons.arrow_forward_ios, color: Colors.white,),
            ),
          ),
        ],
      );
  });
}

  void scrollBackImage(BoxConstraints constraints) {
    setState(() {
      if (_currentIndex == 0) {
        _currentIndex = widget.images.length -1;
      } else {
        _currentIndex = _currentIndex - 1;
      }
      _scrollController.animateTo(
        _currentIndex * constraints.maxWidth ,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  void scrollToNextImage(BoxConstraints constraints) {
    setState(() {
      print(_currentIndex);
      if (_currentIndex >= (widget.images.length -1)) {
        _currentIndex = 0;
      } else {
        _currentIndex = _currentIndex + 1;
      }
      print(_currentIndex);
      _scrollController.animateTo(
        _currentIndex * constraints.maxWidth , // 120 = 2 * margin (10 * 2) and 20 padding (10 * 2)
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

}
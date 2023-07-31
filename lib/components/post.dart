import 'package:flutter/material.dart';
import 'package:flutter_app/components/abbreviated_date.dart';
import 'package:flutter_app/components/image_carousel.dart';
import 'package:flutter_app/components/post_icons.dart';
import 'package:flutter_app/components/rating.dart';
import 'package:flutter_app/components/text.dart';

class Post extends StatelessWidget {
  final List<String> postImageURLs;
  final DateTime dateTime;
  final String companyImage;
  final String title;
  final String companyName;
  final double? price;
  final double rating;

  final void Function()? tap;

  const Post(
      {super.key,
      required this.postImageURLs,
      required this.dateTime,
      required this.companyImage,
      required this.title,
      required this.companyName,
      required this.price,
      required this.rating,
      this.tap});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.white, width: 2)),
            color: Colors.black),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Expanded(
              flex: 1,
              child: Container(
                  decoration: const BoxDecoration(
                      border: Border(
                          right: BorderSide(color: Colors.black, width: 2)),
                      color: Colors.black),
                  alignment: Alignment.center,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: SizedBox(
                            width: MediaQuery.of(context).size.width *
                                0.11.toDouble(),
                            child: Image(image: AssetImage(companyImage))))
                  ]))),
          Expanded(
            flex: 6,
            child: Column(
              children: [
                Padding(
                    padding: const EdgeInsets.fromLTRB(0, 3, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                            child: TextComponent(companyName, fontSize: 14,)),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              RatingWidget(value: rating.toDouble()),
                              Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10.0, 0, 0, 0),
                                  child: AbbreviatedDate(value: dateTime)),
                              Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10.0, 0, 0, 0),
                                  child: Container(
                                      alignment: Alignment.center,
                                      width: 35.0.toDouble(),
                                      height: 25.0.toDouble(),
                                      child: const IconButton(
                                        padding: EdgeInsets.all(0),
                                        onPressed: null,
                                        icon: Icon(
                                          Icons.more_horiz,
                                          color: Colors.white,
                                          size: 28.0,
                                        ),
                                      )))
                            ])
                      ],
                    )),

                FractionallySizedBox(
                    widthFactor: 0.9,
                    child: Container(
                        height: 200,
                        constraints: const BoxConstraints(maxHeight: 200),
                        // constraints: const BoxConstraints(maxHeight: 100),
                        // color: Colors.blue,
                        child: ImageCarousel(images: postImageURLs))),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                     Padding(
                       padding: EdgeInsets.all(5),
                       child: TextComponent("Lego Icons NASA Space Shuttle Discovery 10283 Model Building Set - Spaceship", textAlign: TextAlign.center)
                     ),
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: TextComponent("price: \$323.33")
                    )
                  ],
                ),
                PostIcons() // icons
              ],
            ),
          )
        ]));
  }
}

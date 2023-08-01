import 'package:flutter/material.dart';
import 'package:flutter_app/components/main_header_nav_bar.dart';
import 'package:flutter_app/components/post.dart';

import '../components/main_footer_nav_bar.dart';

class EntryPage extends StatefulWidget {
  const EntryPage({super.key});

  @override
  State<EntryPage> createState() => _EntryPageState();
}

class _EntryPageState extends State<EntryPage> {
  final GlobalKey<FormState> popularPost = GlobalKey<FormState>();
  final GlobalKey<FormState> favorites = GlobalKey<FormState>();
  // will later add an image server to serve images
  //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: MainHeaderNavBar(),
        primary: true,
        toolbarHeight: 80,
        backgroundColor: Colors.black,
        leading: null,
        automaticallyImplyLeading: false,
      ),
      bottomNavigationBar: MainFooterNavBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.zero,
          scrollDirection: Axis.vertical,
          clipBehavior: Clip.none,
            child: Column(
                children: [
                  Post(
                    postImageURLs: const [
                      "assets/image-carousel/img1.png",
                      "assets/image-carousel/img2.png",
                      "assets/image-carousel/img3.png"
                    ],
                    dateTime: DateTime.parse('1999-07-20 20:18:04Z'),
                    companyImage: "assets/post/lego.png",
                    title: "my image is awesome",
                    price: 20.22.toDouble(),
                    companyName: 'Lego',
                    rating: 3.5,
                  ),
                  Post(
                    postImageURLs: const [
                      "assets/image-carousel/shoe1.png",
                      "assets/image-carousel/shoe2.png",
                      "assets/image-carousel/shoe3.png"
                    ],
                    dateTime: DateTime.parse('2023-07-20 20:18:04Z'),
                    companyImage: "assets/post/nike.png",
                    title: "my image is awesome",
                    price: 20.22.toDouble(),
                    companyName: 'Nike',
                    rating: 4,
                  ),
                  Post(
                    postImageURLs: const [
                      "assets/image-carousel/img1.png",
                      "assets/image-carousel/img2.png",
                      "assets/image-carousel/img3.png"
                    ],
                    dateTime: DateTime.parse('2023-07-23 12:01:33Z'),
                    companyImage: "assets/post/lego.png",
                    title: "my image is awesome",
                    price: 20.22.toDouble(),
                    companyName: 'Lego',
                    rating: 5,
                  ),
                  Post(
                    postImageURLs: const [
                      "assets/image-carousel/shoe1.png",
                      "assets/image-carousel/shoe2.png",
                      "assets/image-carousel/shoe3.png"
                    ],
                    dateTime: DateTime.parse('2023-07-23 12:03:23Z'),
                    companyImage: "assets/post/nike.png",
                    title: "my image is awesome",
                    price: 20.22.toDouble(),
                    companyName: 'Nike',
                    rating: 3,
                  ),
                ],
              ),
        )
    );
  }
}

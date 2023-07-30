
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PostIcons extends StatelessWidget {
  PostIcons({super.key});

  final Widget svgFavorite = SvgPicture.asset(
    'assets/favorite.svg',
    width: 20,
    height: 20,
    alignment: Alignment.center,
    colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
  );

  final Widget svgChat = SvgPicture.asset(
    'assets/chat.svg',
    width: 20,
    height: 20,
    alignment: Alignment.center,
    colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
  );

  final Widget svgList = SvgPicture.asset(
    'assets/list.svg',
    width: 20,
    height: 20,
    alignment: Alignment.center,
    colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
  );

  final Widget svgRatingReview = SvgPicture.asset(
    'assets/rate_review.svg',
    width: 20,
    height: 20,
    alignment: Alignment.center,
    colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
  );

  final Widget svgQueryStats = SvgPicture.asset(
    'assets/query_stats.svg',
    width: 20,
    height: 20,
    alignment: Alignment.center,
    colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 30,
      color: Colors.black,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              alignment: Alignment.center,
              onPressed: () {
                Navigator.pushNamed(context, "/login");
              },
              icon: svgFavorite,
            ),
            IconButton(
              alignment: Alignment.center,
              onPressed: () {
                Navigator.pushNamed(context, "/login");
              },
              icon: svgChat,
            ),
            IconButton(
              alignment: Alignment.center,
              onPressed: () {
                Navigator.pushNamed(context, "/login");
              },
              icon: svgList,
            ),
            IconButton(
              alignment: Alignment.center,
              onPressed: () {
                Navigator.pushNamed(context, "/login");
              },
              icon: svgRatingReview,
            ),
            IconButton(
              alignment: Alignment.center,
              onPressed: () {
                Navigator.pushNamed(context, "/login");
              },
              icon: svgQueryStats,
            )
          ]),
    );
  }
}
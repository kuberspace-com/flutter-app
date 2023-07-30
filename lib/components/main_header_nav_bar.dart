import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainHeaderNavBar extends StatelessWidget {
  MainHeaderNavBar({super.key});

  final Widget svgIcon = SvgPicture.asset(
    'assets/crowd-source.svg',
    width: 40,
    height: 40,
    alignment: Alignment.center,
    colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.bottomCenter,
            color: Colors.black,
            child: Padding(
              padding: EdgeInsets.zero,
              child: Stack(
                children: [
                  Positioned(
                      left: 20,
                      bottom: 5,
                      child: ClipOval(
                        child: SizedBox.fromSize(
                          size: const Size.fromRadius(20), // Image radius
                          child: Image.network(
                              'https://i.pinimg.com/originals/a4/e0/7a/a4e07a1e331349310604dc0a0c9bf007.jpg',
                              fit: BoxFit.cover),
                        ),
                      )),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                          child: svgIcon))
                ],
              ),
            )),
        Container(
          decoration: const BoxDecoration(color: Colors.black, border: Border(bottom: BorderSide(color: Colors.white, width: 2))),
          width: MediaQuery.of(context).size.width,
          height: 35,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [Text("Most Popular", style: TextStyle(color: Colors.white),), Text("Favorites", style: TextStyle(color: Colors.white)),Text("Categories", style: TextStyle(color: Colors.white))]),
        )
      ],
    );
  }
}

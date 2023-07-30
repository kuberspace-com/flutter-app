import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainFooterNavBar extends StatelessWidget {
  MainFooterNavBar({super.key});

  final Widget svgHomeIcon = SvgPicture.asset(
    'assets/home.svg',
    width: 20,
    height: 20,
    alignment: Alignment.center,
    colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
  );

  final Widget svgSearchIcon = SvgPicture.asset(
    'assets/search.svg',
    width: 20,
    height: 20,
    alignment: Alignment.center,
    colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
  );

  final Widget svgNotificationsIcon = SvgPicture.asset(
    'assets/notifications.svg',
    width: 20,
    height: 20,
    alignment: Alignment.center,
    colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
  );

  final Widget svgInboxIcon = SvgPicture.asset(
    'assets/inbox.svg',
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
          icon: svgHomeIcon,
        ),
        IconButton(
          alignment: Alignment.center,
          onPressed: () {
            Navigator.pushNamed(context, "/login");
          },
          icon: svgSearchIcon,
        ),
        IconButton(
          alignment: Alignment.center,
          onPressed: () {
            Navigator.pushNamed(context, "/login");
          },
          icon: svgNotificationsIcon,
        ),
        IconButton(
          alignment: Alignment.center,
          onPressed: () {
            Navigator.pushNamed(context, "/login");
          },
          icon: svgInboxIcon,
        )
      ]),
    );
  }
}

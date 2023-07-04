import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NavBar extends StatelessWidget {
  NavBar({super.key});

  final Widget svgIcon = SvgPicture.asset(
    'assets/arrow.svg',
    width: 55,
    height: 55,
    alignment: Alignment.center,
    colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 70,
      alignment: Alignment.bottomCenter,
      color: const Color.fromRGBO(1, 98, 129, 1),
      child: Stack(
        children: [
          Positioned(
              left: 8,
              top: 24,
              child: IconButton(
                alignment: Alignment.center,
                onPressed: () {
                  Navigator.pushNamed(context, "/login");
                },
                icon: svgIcon,
              )),
          const Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: Text(
                    "Forgot Password",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )))
        ],
      ),
    );
  }
}

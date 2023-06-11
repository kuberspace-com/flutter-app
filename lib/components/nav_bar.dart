import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NavBar extends StatelessWidget {
  NavBar({super.key});

  final Widget svgIcon = SvgPicture.asset(
    'assets/arrow.svg',
    width: 40,
    height: 40,
    colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 70,
      color: const Color.fromRGBO(1, 98, 129, 1),
      child: Stack(
        alignment: AlignmentDirectional.bottomStart,
        children: [
          SizedBox(
              width: 60,
              height: 45,
              child: IconButton(
                  onPressed: () {
                    // ignore: avoid_print
                    print("Tapped");
                    Navigator.pushNamed(context, "/login");
                  },
                  icon: svgIcon)),
          SizedBox(
              height: 25,
              width: MediaQuery.of(context).size.width,
              child: const Text(
                "Forgot Password",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ))
        ],
      ),
    );
  }
}

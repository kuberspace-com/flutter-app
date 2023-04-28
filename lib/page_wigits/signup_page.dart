import 'package:flutter/material.dart';


class Signup extends StatelessWidget {
  const Signup({super.key});


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Image(
              image: AssetImage('./assets/temp-home-page-background.jpg')
            ),
            Text(
              'Signup',
              style: TextStyle(color: Colors.black, fontSize: 22),
            ),
          ],
        ),
      )
    );
  }
}
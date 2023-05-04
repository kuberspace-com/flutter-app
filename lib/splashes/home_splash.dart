import 'package:convrsy/page_wigits/home_page.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({ Key? key}) : super(key: key);
  @override
  State<Splash> createState() => _SplashState();
}


class _SplashState extends State<Splash> {

  @override
  void initState(){
    super.initState();
    Future.delayed(
        const Duration(seconds: 3), () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyHomePage(title: 'Convrsy')),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(222, 239, 27, 1),
      body: Center(
          child: Column(  
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [Image(image: AssetImage('./assets/convrsy.png')),
      Text("Get paid to discuss!", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700))
      ],
    )));
  }
}



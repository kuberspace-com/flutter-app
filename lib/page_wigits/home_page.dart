import 'package:flutter_app/components/round_button.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void routeToLoginPage() {
    Navigator.pushNamed(context, "/login");
  }

  void routeToSignupPage() {
    Navigator.pushNamed(context, "/signup");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Stack(children: const <Widget>[
            Image(image: AssetImage('./assets/temp-home-page-background.jpg')),
            Center(
                child: Padding(
                    padding: EdgeInsets.fromLTRB(30, 50, 30, 30),
                    child: Text(
                      'Where does your discussion lead you?',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black, fontSize: 24),
                    ))),
          ]),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 50, 0, 30),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.80,
              height: 50.0,
              child: RoundButton(
                  text: "Login",
                  background: Colors.blue,
                  tap: () => {Navigator.pushNamed(context, "/login")}),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.80,
            height: 50.0,
            child: RoundButton(
                text: "Sign up",
                background: Colors.black,
                tap: () => {Navigator.pushNamed(context, "/create-account")}),
          ),
        ],
      ),
    ));
  }
}

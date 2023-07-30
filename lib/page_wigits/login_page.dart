import 'package:flutter_app/components/hyperlink.dart';
import 'package:flutter/material.dart';

import '../components/round_button.dart';
import '../components/round_input_field.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> login = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            clipBehavior: Clip.none,
            child: SizedBox(
                child: Column(children: [
              Align(
                  alignment: Alignment.topCenter,
                  child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 230,
                      child: const Image(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              './assets/temp-home-page-background.jpg')))),
              Center(
                  child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                      child: Form(
                        key: login,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            RoundInputField(
                                hintText: "Email",
                                size: 'small',
                                controller: null,
                                validator: (String? value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Email cannot be empty';
                                  }
                                  // username validation to server
                                  return null;
                                }),
                            RoundInputField(
                                hintText: "Password",
                                size: 'small',
                                controller: null,
                                validator: (String? value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Password cannot be empty';
                                  }
                                  // username validation to server
                                  return null;
                                }),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 25, 0, 15),
                              child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.80,
                                  height: 50.0,
                                  child: RoundButton(
                                    tap: () => {Navigator.pushNamed(context, "/entry")},
                                    text: 'Sign in',
                                    background: Colors.blue,
                                  )),
                            ),
                            HyperLink(
                                text: "Forgot Password?",
                                tap: () {
                                  Navigator.pushNamed(
                                      context, "/forgot-password");
                                }),
                          ],
                        ),
                      ))),
              Center(
                  heightFactor: 3,
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Need an account? ",
                              textAlign: TextAlign.center,
                            ),
                            HyperLink(
                                text: "Create Account",
                                tap: () {
                                  Navigator.pushNamed(
                                      context, "/create-account");
                                }),
                          ])))
            ]))));
  }
}

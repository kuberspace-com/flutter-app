import 'package:flutter/material.dart';
import 'package:flutter_app/components/nav_bar.dart';
import 'package:flutter_app/components/round_button.dart';
import 'package:flutter_app/components/round_input_field.dart';
import 'package:flutter_svg/svg.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final GlobalKey<FormState> login = GlobalKey<FormState>();

  Widget svgIcon = SvgPicture.asset(
    'assets/lock.svg',
    width: 200,
    height: 200,
    colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      NavBar(),
      Container(
          margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
          child: Form(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              svgIcon,
              const Padding(
                  padding: EdgeInsets.fromLTRB(35, 10, 35, 10),
                  child: Text(
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                      "For your security, we need to verify your identity. Enter your email address. We will send you an email to reset your password.")),
              RoundInputField(
                  hintText: "Email",
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Email cannot be empty';
                    }
                    // username validation to server
                    return null;
                  }),
              RoundButton(
                  text: "Submit",
                  tap: () => {
                        // run validator before pushing else dont navigate
                        Navigator.pushNamed(context, "/login")
                      })
            ],
          )))
    ]));
  }
}

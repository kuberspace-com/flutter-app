import 'package:convrsy/components/round_button.dart';
import 'package:convrsy/components/round_input_field.dart';
import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController retypePassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(                  
          scrollDirection: Axis.vertical,
          clipBehavior: Clip.none,
          child: Padding(
            // height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.fromLTRB(0,0, 0, 50),
            child: Column(
              children: [
                const Padding(
                    padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                    child: Center(
                        child: Text(
                      "Sign up",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ))),
                Form(
                    key: _formKey,
                    child: Column(children: [
                        RoundInputField(
                          hintText: "First name",
                          size: 'small',
                          controller: firstName,
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'First Name cannot be empty';
                            }
                            // username validation to server
                            return null;
                          }),
                        RoundInputField(
                          hintText: "Last name",
                          size: 'small',
                          controller: lastName,
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Last Name cannot be empty';
                            }
                            // username validation to server
                            return null;
                          }),
                      RoundInputField(
                          hintText: "Username",
                          size: 'small',
                          controller: username,
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Username cannot be empty';
                            }
                            if (value.toLowerCase() == 'bob') {
                              return 'Username is already taken';
                            }
                            // username validation to server
                            return null;
                          }),
                      RoundInputField(
                          hintText: "Email",
                          size: 'small',
                          controller: email,
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Email cannot be empty';
                            }
                            if (value.toLowerCase() == 'bob@gmail.com') {
                              return 'Email is already used for another account';
                            }
                            // username validation to server
                            return null;
                          }),
                        RoundInputField(
                          hintText: "Password",
                          size: 'small',
                          controller: password,
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Password cannot be empty';
                            }
                            // username validation to server
                            return null;
                          }),
                        RoundInputField(
                          hintText: "Retype-Password",
                          size: 'small',
                          controller: null,
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Password cannot be empty';
                            }
                            // username validation to server
                            return null;
                          })
                    ])),
                     const RoundButton(text: "Confirm Identity")
              ],
            )
            )));
  }
}

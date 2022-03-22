// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_api_rest/widgets/input_text.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 30,
      left: 20,
      right: 20,
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          // ignore: prefer_const_constructors
          InputText(
            keyboardType: TextInputType.emailAddress,
            label: "EMAIL ADDRESS",
          ),
          Container(
            decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.black12))),
            child: Row(
              children: [
                Expanded(
                  child: InputText(
                    keyboardType: TextInputType.text,
                    label: "PASSWORD",
                    obscureText: true,
                    borderEnabled: false,
                  ),
                ),
                FlatButton(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    onPressed: () {},
                    child: Text(
                      "Forgot Password",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}

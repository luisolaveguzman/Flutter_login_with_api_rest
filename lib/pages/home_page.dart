import 'package:flutter/material.dart';
import 'package:flutter_api_rest/utils/responsive.dart';
import 'package:flutter_api_rest/widgets/circle.dart';
import 'package:flutter_api_rest/widgets/icon_container.dart';
import 'package:flutter_api_rest/widgets/login_form.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    //final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
            child: Container(
          width: double.infinity,
          height: responsive.height,
          color: Colors.white,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                  top: -responsive.wp(35),
                  left: -responsive.wp(8),
                  child: Circle(
                      size: responsive.wp(60),
                      colors: [
                        Colors.orange,
                        Colors.orange.shade500,
                        Colors.orange.shade900
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
              Positioned(
                  top: -responsive.wp(25.5),
                  right: -responsive.wp(5),
                  child: Circle(
                    size: responsive.wp(70),
                    colors: [
                      Colors.pink,
                      Colors.pink.shade500,
                      Colors.pink.shade900
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )),
              Positioned(
                top: responsive.wp(30),
                //left: size.width * 0.4,
                child: Column(
                  children: [
                    const IconContainer(),
                    SizedBox(
                      height: responsive.dp(3),
                    ),
                    Text(
                      "Hola\nBienvenido",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: responsive.dp(2.3)),
                    )
                  ],
                ),
              ),
              const LoginForm(),
            ],
          ),
        )),
      ),
    );
  }
}

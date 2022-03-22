import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconContainer extends StatelessWidget {
  const IconContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.22,
      height: size.width * 0.22,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
                color: Colors.black26, blurRadius: 25, offset: Offset(0, 20))
          ]),
      padding: const EdgeInsets.all(15),
      child: Center(
          child: SvgPicture.asset(
        'assets/images/icon.svg',
        width: 120,
        height: 120,
      )),
    );
  }
}

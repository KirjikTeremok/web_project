import 'package:flutter/material.dart';

class Decorationn extends StatelessWidget {
  const Decorationn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyCustomClipper(),
      child: Container(
        width: 300,
        height: double.infinity,
        color: Colors.orangeAccent,
      ),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path>{

  @override
  Path getClip(Size size) {
    Path path = Path()
      ..lineTo(size.width, 0)
      ..lineTo(size.width/2, size.height/2)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..lineTo(size.width/2, size.height/2)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;

}
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  late double _deviceHeight, _devicWidth;

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _devicWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.red,
          child: _pageTitle(),
        ),
      ),
    );
  }
}

Widget _pageTitle() {
  return const Text(
    "#GoMoon",
    style: TextStyle(
        color: Colors.white, fontSize: 70, fontWeight: FontWeight.w900),
  );
}

Widget _astroImageWidget() {
  return Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
          image: AssetImage("assets/images/1.webp"), fit: BoxFit.cover),
    ),
  );
}

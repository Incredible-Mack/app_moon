import 'package:app_moon/widget/custom_dropdown_btn.dart';
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
            width: _devicWidth,
            height: _deviceHeight,
            padding: EdgeInsets.symmetric(horizontal: _devicWidth * 0.05),
            child: Stack(
              children: [
                _astroImageWidget(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _pageTitle(),
                    _groupColumn(),
                  ],
                ),
              ],
            )),
      ),
    );
  }

  Widget _pageTitle() {
    return const Text(
      "#GoMoon",
      style: TextStyle(
          color: Colors.white, fontSize: 80, fontWeight: FontWeight.w900),
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

  Widget _destinationDropDown() {
    return CustomDropDownButton(
      value: const ['James Web Station', 'Mac Station'],
      width: _devicWidth,
    );
  }

  Widget _travellersInfo() {
    return CustomDropDownButton(
      value: const ['1', '2', '3', '4'],
      width: _devicWidth * 0.44,
    );
  }

  Widget _travellersPackage() {
    return CustomDropDownButton(
      value: const ['Economy', 'Private', 'Commercial', '4'],
      width: _devicWidth * 0.44,
    );
  }

  Widget _groupRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [_travellersInfo(), _travellersPackage()],
    );
  }

  Widget _groupColumn() {
    return Container(
      height: _deviceHeight * 0.20,
      margin: EdgeInsets.symmetric(vertical: _devicWidth * 0.10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _destinationDropDown(),
          _groupRow(),
          _rideButton(),
        ],
      ),
    );
  }

  Widget _rideButton() {
    return Container(
      width: _devicWidth,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: MaterialButton(
        onPressed: () {},
        child: const Text(
          'Book Ride',
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}

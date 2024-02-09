import 'package:flutter/material.dart';

class CustomDropDownButton extends StatelessWidget {
  List<String> value;
  double width;

  CustomDropDownButton({required this.value, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
      width: width,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(53, 53, 53, 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButton(
        onChanged: (_) {},
        underline: Container(),
        style: const TextStyle(
          color: Colors.white,
        ),
        dropdownColor: const Color.fromRGBO(53, 53, 53, 1),
        value: value.first,
        items: value.map((e) {
          return DropdownMenuItem(
            value: e,
            child: Text(e),
          );
        }).toList(),
      ),
    );
  }
}

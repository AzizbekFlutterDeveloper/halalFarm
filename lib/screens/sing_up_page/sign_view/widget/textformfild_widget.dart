import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:halol_farm/code/constans/size_config.dart';

class MyCupertinoTextFrom extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  const MyCupertinoTextFrom({ Key? key, this.controller, this.hintText }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getHeight(28),
      width: getWidth(343),
      child: CupertinoTextField(
        controller: controller,
        placeholder: hintText,
        placeholderStyle: TextStyle(
          color: Colors.grey,
          fontSize: getHeight(14)
        ),
        style: TextStyle(
          color: Colors.black,
          fontSize: getHeight(14)
        ),
        decoration: BoxDecoration(
          color: Colors.transparent,
          
        ),

      ),
    );
  }
}
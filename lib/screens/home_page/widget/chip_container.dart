import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:halol_farm/code/constans/size_config.dart';

class ChipContainer extends StatelessWidget {
  final icon;
  final String? text;
  const ChipContainer({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(getHeight(12)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        color: Color(0xffF6F6F6),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon ?? Text(""),
          icon == null ? Text("") : SizedBox(width: getWidth(5)),
          Text(
            text!,
            style: TextStyle(
              fontSize: getWidth(16),
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

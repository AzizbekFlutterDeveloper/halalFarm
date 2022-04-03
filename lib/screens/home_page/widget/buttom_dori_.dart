import 'package:flutter/material.dart';
import 'package:halol_farm/code/constans/size_config.dart';

class ButtomDori extends StatelessWidget {
  const ButtomDori({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: getHeight(46),
        width: getWidth(343),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: Center(
          child: Text(
            "Dori sotib olish",
            style: TextStyle(
              fontSize: getHeight(15),
              color: const Color(0xff262B27),
            ),
          ),
        ),
      ),
      onTap: () {
        Navigator.pushNamed(context, '/harid_dori');
      },
    );
  }
}

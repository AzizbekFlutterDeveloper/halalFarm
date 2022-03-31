import 'package:flutter/material.dart';
import 'package:halol_farm/code/constans/size_config.dart';

class ContainerApple extends StatelessWidget {
  final String? image;
  final String? name;
  const ContainerApple({Key? key,required this.image, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getHeight(56),
      width: getWidth(166),
      decoration: const BoxDecoration(
        color: Color(0xffF2F1F7),
        borderRadius: BorderRadius.all(Radius.circular(14)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: getHeight(33),
            width: getWidth(33),
            child: Image.asset(image?? ""),
          ),
          SizedBox(width: getWidth(10)),
          Text(
            name?? "",
            style: TextStyle(color: Colors.black, fontSize: getWidth(17)),
          ),
        ],
      ),
    );
  }
}

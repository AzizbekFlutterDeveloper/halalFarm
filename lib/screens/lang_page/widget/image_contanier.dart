import 'package:flutter/material.dart';
import 'package:halol_farm/code/constans/size_config.dart';

class ImageContainer extends StatelessWidget {
  final double? leftBorder;
  final double? rightBorder;
  final String? image;
  const  ImageContainer({ Key? key, this.leftBorder, this.rightBorder ,required this.image }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      height: getHeight(400),
      width: getWidth(375),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(leftBorder?? 0),
          bottomRight: Radius.circular(rightBorder?? 0),
        ),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(image!),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:halol_farm/code/constans/colors_consts.dart';
import 'package:halol_farm/code/constans/size_config.dart';

class ContainerButton extends StatelessWidget {
  final top;
  final bottom;
  final name;
  final onTap;
  final color;
  final textColor;
  final child;
  const ContainerButton({ Key? key,this.name, this.bottom, this.top, this.onTap, this.color, this.textColor, this.child }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.only(
          top: top?? 0,
          bottom: bottom?? 0,
        ),
        height: getHeight(56),
        width: getWidth(343),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(19)),
          color: color ??  ConsColors.green,
        ),
        child: child ?? Center(
          child: Text(name?? " ",
            style: TextStyle(
              color: textColor ?? Colors.white,
              fontSize: getHeight(18),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      onTap: onTap ?? (){},
    );
  }
}
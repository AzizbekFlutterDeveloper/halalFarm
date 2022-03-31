import 'package:flutter/material.dart';
import 'package:halol_farm/code/constans/size_config.dart';

class LangContainer extends StatelessWidget {
  final topBorder;
  final bottomBorder;
  final name;
  final border;
  final flag;
  final color;
  const LangContainer({ Key? key,this.bottomBorder,this.topBorder,required this.flag,this.name, this.border, this.color }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      height: getHeight(80),
      width: getWidth(343),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(topBorder?? 0),
          bottom: Radius.circular(bottomBorder?? 0),
        ),
        color: color ?? const Color(0xffF2F1F7),
        border: Border.all(color: border ?? const Color(0xffF2F1F7))
      ),
      child: Row(
        children: [
          SizedBox(width: getWidth(16)),
          CircleAvatar(
            radius: getHeight(20),
            backgroundImage: AssetImage(flag),
          ),
          SizedBox(width: getWidth(20)),
          Text(name ?? "",
            style: TextStyle(
              fontSize: getHeight(18),
              fontWeight: FontWeight.w500,
            ),
          ),
          Spacer(),
          Icon(Icons.check, size: getHeight(25), color:border ?? Color(0xffF2F1F7)),
          SizedBox(width: getWidth(16)),
        ],
      )
    );
  }
}
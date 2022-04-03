import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:halol_farm/code/constans/size_config.dart';

class MyAppBar extends StatelessWidget {
  final icon;
  final trailing;
  final String? title;
  final textStyle;
  final Color? color;
  final iconColor;
  const MyAppBar({Key? key, this.icon, this.title, this.trailing, this.textStyle, this.color, this.iconColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      height: getHeight(40),
      width: getWidth(375),
      color : color ?? Colors.transparent,
      child: Row(
        children: [
          SizedBox(
            width: getHeight(80),
            child: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
            
              child: icon ??
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        size: getHeight(20),
                        color: iconColor ?? Colors.black,
                      ),
                      Text(
                        "ortga".tr(),
                        style: TextStyle(fontSize: getHeight(15),color: iconColor ?? Colors.black),

                      ),
                    ],
                  ),
            ),
          ),
          SizedBox(
            width: getWidth(172),
            child: Center(
              child: AutoSizeText(
                title ?? "",
                style: textStyle ?? TextStyle(
                  fontSize: getHeight(16),
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          SizedBox(
            width: getWidth(100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                trailing ?? const Text(""),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}

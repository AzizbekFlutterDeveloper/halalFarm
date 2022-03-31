import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:halol_farm/code/constans/size_config.dart';

class MyAppBar extends StatelessWidget {
  final icon;
  final trailing;
  final String? title;
  const MyAppBar({Key? key, this.icon, this.title, this.trailing}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SizedBox(
      height: getHeight(40),
      width: getWidth(375),
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
                      ),
                      Text(
                        "ortga".tr(),
                        style: TextStyle(fontSize: getHeight(15)),
                      ),
                    ],
                  ),
            ),
          ),
          SizedBox(
            width: getWidth(152),
            child: AutoSizeText(
              title ?? "",
              style: TextStyle(
                fontSize: getHeight(16),
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            width: getWidth(60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
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

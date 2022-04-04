import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:halol_farm/code/constans/size_config.dart';

class SearchAppBar extends StatelessWidget {
  const SearchAppBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getHeight(40),
      width: getWidth(375),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: getHeight(36),
            width: getWidth(303),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(13)),
              color: Color(0xffEFEFEF),
            ),
            child: CupertinoTextField(
              cursorHeight: getHeight(20),
              placeholder: "Qidirish",
              padding: EdgeInsets.symmetric(horizontal: getWidth(15)),
              placeholderStyle: TextStyle(color: Colors.grey),
              prefix: Icon(Icons.search,color: Colors.grey,size: getWidth(27),),
              decoration: BoxDecoration(
                color: Colors.transparent,
                
              ),
            ),
          ),
          SvgPicture.asset("assets/icon/adjustments-horizontal.svg",height: getHeight(26),)
        ],
      ),
    );
  }
}